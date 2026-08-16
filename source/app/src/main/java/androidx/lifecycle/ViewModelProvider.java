package androidx.lifecycle;

import Lf.o;
import android.app.Application;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactory;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.lifecycle.viewmodel.ViewModelInitializer;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public class ViewModelProvider {
    private final CreationExtras defaultCreationExtras;
    private final Factory factory;
    private final ViewModelStore store;

    public static class NewInstanceFactory implements Factory {
        public static final Companion Companion = new Companion(null);
        public static final CreationExtras.Key<String> VIEW_MODEL_KEY = Companion.ViewModelKeyImpl.INSTANCE;
        private static NewInstanceFactory sInstance;

        public static final class Companion {

            public static final class ViewModelKeyImpl implements CreationExtras.Key<String> {
                public static final ViewModelKeyImpl INSTANCE = new ViewModelKeyImpl();

                private ViewModelKeyImpl() {
                }
            }

            public Companion(C14026x c14026x) {
                this();
            }

            @o
            public static void getInstance$annotations() {
            }

            public final NewInstanceFactory getInstance() {
                if (NewInstanceFactory.sInstance == null) {
                    NewInstanceFactory.sInstance = new NewInstanceFactory();
                }
                NewInstanceFactory newInstanceFactory = NewInstanceFactory.sInstance;
                M.m(newInstanceFactory);
                return newInstanceFactory;
            }

            private Companion() {
            }
        }

        public static final NewInstanceFactory getInstance() {
            return Companion.getInstance();
        }

        @Override
        public <T extends ViewModel> T create(Class<T> modelClass) {
            M.p(modelClass, "modelClass");
            try {
                T newInstance = modelClass.newInstance();
                M.o(newInstance, "{\n                modelC\u2026wInstance()\n            }");
                return newInstance;
            } catch (IllegalAccessException e10) {
                throw new RuntimeException("Cannot create an instance of " + ((Object) modelClass), e10);
            } catch (InstantiationException e11) {
                throw new RuntimeException("Cannot create an instance of " + ((Object) modelClass), e11);
            }
        }
    }

    public static class OnRequeryFactory {
        public void onRequery(ViewModel viewModel) {
            M.p(viewModel, "viewModel");
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider(ViewModelStore store, Factory factory) {
        this(store, factory, null, 4, null);
        M.p(store, "store");
        M.p(factory, "factory");
    }

    public <T extends ViewModel> T get(Class<T> modelClass) {
        M.p(modelClass, "modelClass");
        String canonicalName = modelClass.getCanonicalName();
        if (canonicalName != null) {
            return (T) get("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, modelClass);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    public static class AndroidViewModelFactory extends NewInstanceFactory {
        public static final String DEFAULT_KEY = "androidx.lifecycle.ViewModelProvider.DefaultKey";
        private static AndroidViewModelFactory sInstance;
        private final Application application;
        public static final Companion Companion = new Companion(null);
        public static final CreationExtras.Key<Application> APPLICATION_KEY = Companion.ApplicationKeyImpl.INSTANCE;

        public static final class Companion {

            public static final class ApplicationKeyImpl implements CreationExtras.Key<Application> {
                public static final ApplicationKeyImpl INSTANCE = new ApplicationKeyImpl();

                private ApplicationKeyImpl() {
                }
            }

            public Companion(C14026x c14026x) {
                this();
            }

            public final Factory defaultFactory$lifecycle_viewmodel_release(ViewModelStoreOwner owner) {
                M.p(owner, "owner");
                if (!(owner instanceof HasDefaultViewModelProviderFactory)) {
                    return NewInstanceFactory.Companion.getInstance();
                }
                Factory defaultViewModelProviderFactory = ((HasDefaultViewModelProviderFactory) owner).getDefaultViewModelProviderFactory();
                M.o(defaultViewModelProviderFactory, "owner.defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }

            @o
            public final AndroidViewModelFactory getInstance(Application application) {
                M.p(application, "application");
                if (AndroidViewModelFactory.sInstance == null) {
                    AndroidViewModelFactory.sInstance = new AndroidViewModelFactory(application);
                }
                AndroidViewModelFactory androidViewModelFactory = AndroidViewModelFactory.sInstance;
                M.m(androidViewModelFactory);
                return androidViewModelFactory;
            }

            private Companion() {
            }
        }

        private AndroidViewModelFactory(Application application, int i10) {
            this.application = application;
        }

        @o
        public static final AndroidViewModelFactory getInstance(Application application) {
            return Companion.getInstance(application);
        }

        @Override
        public <T extends ViewModel> T create(Class<T> modelClass, CreationExtras extras) {
            M.p(modelClass, "modelClass");
            M.p(extras, "extras");
            if (this.application != null) {
                return (T) create(modelClass);
            }
            Application application = (Application) extras.get(APPLICATION_KEY);
            if (application != null) {
                return (T) create(modelClass, application);
            }
            if (!AndroidViewModel.class.isAssignableFrom(modelClass)) {
                return (T) super.create(modelClass);
            }
            throw new IllegalArgumentException("CreationExtras must have an application by `APPLICATION_KEY`");
        }

        public AndroidViewModelFactory() {
            this(null, 0);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public AndroidViewModelFactory(Application application) {
            this(application, 0);
            M.p(application, "application");
        }

        @Override
        public <T extends ViewModel> T create(Class<T> modelClass) {
            M.p(modelClass, "modelClass");
            Application application = this.application;
            if (application != null) {
                return (T) create(modelClass, application);
            }
            throw new UnsupportedOperationException("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
        }

        private final <T extends ViewModel> T create(Class<T> cls, Application application) {
            if (AndroidViewModel.class.isAssignableFrom(cls)) {
                try {
                    T newInstance = cls.getConstructor(Application.class).newInstance(application);
                    M.o(newInstance, "{\n                try {\n\u2026          }\n            }");
                    return newInstance;
                } catch (IllegalAccessException e10) {
                    throw new RuntimeException("Cannot create an instance of " + ((Object) cls), e10);
                } catch (InstantiationException e11) {
                    throw new RuntimeException("Cannot create an instance of " + ((Object) cls), e11);
                } catch (NoSuchMethodException e12) {
                    throw new RuntimeException("Cannot create an instance of " + ((Object) cls), e12);
                } catch (InvocationTargetException e13) {
                    throw new RuntimeException("Cannot create an instance of " + ((Object) cls), e13);
                }
            }
            return (T) super.create(cls);
        }
    }

    public ViewModelProvider(ViewModelStore store, Factory factory, CreationExtras defaultCreationExtras) {
        M.p(store, "store");
        M.p(factory, "factory");
        M.p(defaultCreationExtras, "defaultCreationExtras");
        this.store = store;
        this.factory = factory;
        this.defaultCreationExtras = defaultCreationExtras;
    }

    public interface Factory {
        public static final Companion Companion = Companion.$$INSTANCE;

        public static final class Companion {
            static final Companion $$INSTANCE = new Companion();

            private Companion() {
            }

            @o
            public final Factory from(ViewModelInitializer<?>... initializers) {
                M.p(initializers, "initializers");
                return new InitializerViewModelFactory((ViewModelInitializer[]) Arrays.copyOf(initializers, initializers.length));
            }
        }

        @o
        static Factory from(ViewModelInitializer<?>... viewModelInitializerArr) {
            return Companion.from(viewModelInitializerArr);
        }

        default <T extends ViewModel> T create(Class<T> modelClass) {
            M.p(modelClass, "modelClass");
            throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
        }

        default <T extends ViewModel> T create(Class<T> modelClass, CreationExtras extras) {
            M.p(modelClass, "modelClass");
            M.p(extras, "extras");
            return (T) create(modelClass);
        }
    }

    public <T extends ViewModel> T get(String key, Class<T> modelClass) {
        T t10;
        M.p(key, "key");
        M.p(modelClass, "modelClass");
        T viewModel = (T) this.store.get(key);
        if (modelClass.isInstance(viewModel)) {
            Object obj = this.factory;
            OnRequeryFactory onRequeryFactory = obj instanceof OnRequeryFactory ? (OnRequeryFactory) obj : null;
            if (onRequeryFactory != null) {
                M.o(viewModel, "viewModel");
                onRequeryFactory.onRequery(viewModel);
            }
            if (viewModel != null) {
                return viewModel;
            }
            throw new NullPointerException("null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get");
        }
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(this.defaultCreationExtras);
        mutableCreationExtras.set(NewInstanceFactory.VIEW_MODEL_KEY, key);
        try {
            t10 = (T) this.factory.create(modelClass, mutableCreationExtras);
        } catch (AbstractMethodError unused) {
            t10 = (T) this.factory.create(modelClass);
        }
        this.store.put(key, t10);
        return t10;
    }

    public ViewModelProvider(ViewModelStore viewModelStore, Factory factory, CreationExtras creationExtras, int i10, C14026x c14026x) {
        this(viewModelStore, factory, (i10 & 4) != 0 ? CreationExtras.Empty.INSTANCE : creationExtras);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ViewModelProvider(ViewModelStoreOwner owner) {
        this(r0, AndroidViewModelFactory.Companion.defaultFactory$lifecycle_viewmodel_release(owner), ViewModelProviderGetKt.defaultCreationExtras(owner));
        M.p(owner, "owner");
        ViewModelStore viewModelStore = owner.getViewModelStore();
        M.o(viewModelStore, "owner.viewModelStore");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ViewModelProvider(ViewModelStoreOwner owner, Factory factory) {
        this(r0, factory, ViewModelProviderGetKt.defaultCreationExtras(owner));
        M.p(owner, "owner");
        M.p(factory, "factory");
        ViewModelStore viewModelStore = owner.getViewModelStore();
        M.o(viewModelStore, "owner.viewModelStore");
    }
}
