package androidx.lifecycle;

public class MutableLiveData<T> extends LiveData<T> {
    public MutableLiveData(T t10) {
        super(t10);
    }

    @Override
    public void postValue(T t10) {
        super.postValue(t10);
    }

    @Override
    public void setValue(T t10) {
        super.setValue(t10);
    }

    public MutableLiveData() {
    }
}
