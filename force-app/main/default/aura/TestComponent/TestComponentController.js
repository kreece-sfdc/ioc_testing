({
	onTest : function(component, event, helper) {
		var action = component.get("c.getSomething");
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set('v.value', response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
	}
})