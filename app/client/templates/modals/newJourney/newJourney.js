AutoForm.hooks({
  'journey-new-form': {
    onSuccess: function (operation, result, template) {
      IonModal.close();
      IonKeyboard.close();
      Router.go('journeyDetail', {_id: result});
    }
  }
});
