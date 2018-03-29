void main() {
  try {
    throw new StateError('desc for the error');
  } on Error catch (e) {
    print(e);
  } finally {
    // do nothing
  }

}