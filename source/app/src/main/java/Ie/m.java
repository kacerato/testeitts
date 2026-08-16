package Ie;

import java.util.concurrent.Callable;

public interface m<T> extends Callable<T> {
    @Override
    T call();
}
