package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.M;
import pf.C14960A;
import pf.G;
import pf.H;

public final class SavedStateViewModelFactoryKt {
    private static final List<Class<?>> ANDROID_VIEWMODEL_SIGNATURE = H.Q(Application.class, SavedStateHandle.class);
    private static final List<Class<?>> VIEWMODEL_SIGNATURE = G.l(SavedStateHandle.class);

    public static final <T> Constructor<T> findMatchingConstructor(Class<T> modelClass, List<? extends Class<?>> signature) {
        M.p(modelClass, "modelClass");
        M.p(signature, "signature");
        Object[] constructors = modelClass.getConstructors();
        M.o(constructors, "modelClass.constructors");
        for (Object obj : constructors) {
            Constructor<T> constructor = (Constructor<T>) obj;
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            M.o(parameterTypes, "constructor.parameterTypes");
            List cz = C14960A.cz(parameterTypes);
            if (M.g(signature, cz)) {
                return constructor;
            }
            if (signature.size() == cz.size() && cz.containsAll(signature)) {
                throw new UnsupportedOperationException("Class " + modelClass.getSimpleName() + " must have parameters in the proper order: " + ((Object) signature));
            }
        }
        return null;
    }

    public static final <T extends ViewModel> T newInstance(Class<T> modelClass, Constructor<T> constructor, Object... params) {
        M.p(modelClass, "modelClass");
        M.p(constructor, "constructor");
        M.p(params, "params");
        try {
            return constructor.newInstance(Arrays.copyOf(params, params.length));
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Failed to access " + ((Object) modelClass), e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException("A " + ((Object) modelClass) + " cannot be instantiated.", e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException("An exception happened in constructor of " + ((Object) modelClass), e12.getCause());
        }
    }
}
