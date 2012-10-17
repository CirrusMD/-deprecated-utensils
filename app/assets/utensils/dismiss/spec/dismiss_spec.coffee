
#= require utensils/dismiss

describe 'Dismiss', ->

  beforeEach ->
    @event = null
    @element = null
    @noop = (e, element) ->
      @event = e
      @element = $(element)

    loadFixtures('dismiss')
    @dom = $('#jasmine-fixtures')

    @alert_el = @dom.find('.notification:first-child')
    @alert_link = @alert_el.find('> .close')
    @alert = new utensils.Dismiss(@alert_link)

    @href_el = @dom.find('#dismiss_href')
    @href_link = @href_el.find('> .close')
    @href = new utensils.Dismiss(@href_link)

    @target_el = @dom.find('#dismiss_target')
    @target_link = @target_el.find('> .close')
    @target = new utensils.Dismiss(@target_link)

    @nested_el = @dom.find('#dismiss_nested')
    @nested_link = @nested_el.find('.close')
    @nested = new utensils.Dismiss(@nested_link)

    @alone_el = @dom.find('#dismiss_alone')
    @alone = new utensils.Dismiss(@alone_el)

    @custom_el = @dom.find('#dismiss_cya')
    @custom_link = @custom_el.find('a')
    @custom = new utensils.Dismiss(@custom_link)

  describe 'binding', ->
    it 'is registered in bindable', ->
      expect(utensils.Bindable.getClass('dismiss')).toEqual(utensils.Dismiss)


  describe '#constructor', ->
    it 'sets up a data object', ->
      expect(@alert.data).toBeDefined()


  describe '#options', ->
    it 'sets default data.namespace', ->
      expect(@alert.data.namespace).toEqual('dismiss')

    it 'sets default data.parents', ->
      expect(@alert.data.parents).toEqual('.notification, .dismiss')

    it 'overrides data.parents', ->
      expect(@custom.data.parents).toEqual('#dismiss_cya')


  describe '#initialize', ->
    it 'sets default namespace', ->
      expect(@alert.namespace).toEqual('dismiss')

    it 'sets default parent_classes', ->
      expect(@alert.parent_classes).toEqual('.notification, .dismiss')

    it 'overrides parent_classes', ->
      expect(@custom.parent_classes).toEqual('#dismiss_cya')


  describe '#remove', ->
    it 'triggers a "dismiss" event', ->
      @alert_el.on('dismiss:dismiss', => @noop arguments...)
      spyEvent = spyOn(this, 'noop').andCallThrough()
      @alert_link.click()
      expect(spyEvent).toHaveBeenCalled()

    it 'removes the alert from the dom', ->
      @alert_link.click()
      expect(@alert_el).not.toHaveClass('in')


  describe '#removeTarget', ->
    it 'removes the alert from the dom', ->
      @alert.removeTarget()
      expect(@dom).not.toContain(@alert_el)

    it 'triggers a "dismissed" event', ->
      @alert_el.on('dismiss:dismissed', => @noop arguments...)
      spyEvent = spyOn(this, 'noop').andCallThrough()
      @alert.removeTarget()
      expect(spyEvent).toHaveBeenCalled()


  describe '#addListeners', ->
    it 'adds a listener for "click" event for an alert', ->
      spyEvent = spyOn(@alert, 'deactivated')
      @alert_link.click()
      expect(spyEvent).toHaveBeenCalled()


  describe '#deactivated', ->
    it 'removes the alert element from the dom from the parent', ->
      @alert_link.click()
      expect(@alert_el).not.toHaveClass('in')

    it 'removes the alert element from the dom from the href', ->
      @href_link.click()
      expect(@href_el).not.toHaveClass('in')


  describe '#setTarget', ->
    it 'sets the target against the parent', ->
      @alert.setTarget()
      expect(@alert.target).toBe(@alert_el)

    it 'sets the target against the href', ->
      @href.setTarget()
      expect(@href.target).toBe(@href_el)

    it 'sets the target against the data-target', ->
      @target.setTarget()
      expect(@target.target).toBe(@target_el)

    it 'sets the target when nested', ->
      @nested.setTarget()
      expect(@nested.target).toBe(@nested_el)

    it 'defaults the target against the el', ->
      @alone.setTarget()
      expect(@alone.target).toBe(@alone_el)

    it 'sets the target against custom classes', ->
      @custom.setTarget()
      expect(@custom.target).toBe(@custom_el)
