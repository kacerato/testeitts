package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import java.lang.reflect.Constructor;
import kotlin.jvm.internal.M;

public final class SavedStateViewModelFactory extends ViewModelProvider.OnRequeryFactory implements ViewModelProvider.Factory {
    private Application application;
    private Bundle defaultArgs;
    private final ViewModelProvider.Factory factory;
    private Lifecycle lifecycle;
    private SavedStateRegistry savedStateRegistry;

    public SavedStateViewModelFactory() {
        this.factory = new ViewModelProvider.AndroidViewModelFactory();
    }

    @Override
    public <T extends ViewModel> T create(Class<T> modelClass, CreationExtras extras) {
        Constructor findMatchingConstructor;
        M.p(modelClass, "modelClass");
        M.p(extras, "extras");
        String str = (String) extras.get(ViewModelProvider.NewInstanceFactory.VIEW_MODEL_KEY);
        if (str != null) {
            if (extras.get(SavedStateHandleSupport.SAVED_STATE_REGISTRY_OWNER_KEY) != null && extras.get(SavedStateHandleSupport.VIEW_MODEL_STORE_OWNER_KEY) != null) {
                Application application = (Application) extras.get(ViewModelProvider.AndroidViewModelFactory.APPLICATION_KEY);
                boolean isAssignableFrom = AndroidViewModel.class.isAssignableFrom(modelClass);
                if (isAssignableFrom && application != null) {
                    findMatchingConstructor = SavedStateViewModelFactoryKt.findMatchingConstructor(modelClass, SavedStateViewModelFactoryKt.access$getANDROID_VIEWMODEL_SIGNATURE$p());
                } else {
                    findMatchingConstructor = SavedStateViewModelFactoryKt.findMatchingConstructor(modelClass, SavedStateViewModelFactoryKt.access$getVIEWMODEL_SIGNATURE$p());
                }
                if (findMatchingConstructor == null) {
                    return (T) this.factory.create(modelClass, extras);
                }
                if (isAssignableFrom && application != null) {
                    return (T) SavedStateViewModelFactoryKt.newInstance(modelClass, findMatchingConstructor, application, SavedStateHandleSupport.createSavedStateHandle(extras));
                }
                return (T) SavedStateViewModelFactoryKt.newInstance(modelClass, findMatchingConstructor, SavedStateHandleSupport.createSavedStateHandle(extras));
            }
            if (this.lifecycle != null) {
                return (T) create(str, modelClass);
            }
            throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
        }
        throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
    }

    @Override
    public void onRequery(ViewModel viewModel) {
        M.p(viewModel, "viewModel");
        Lifecycle lifecycle = this.lifecycle;
        if (lifecycle != null) {
            LegacySavedStateHandleController.attachHandleIfNeeded(viewModel, this.savedStateRegistry, lifecycle);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SavedStateViewModelFactory(Application application, SavedStateRegistryOwner owner) {
        this(application, owner, null);
        M.p(owner, "owner");
    }

    public SavedStateViewModelFactory(Application application, SavedStateRegistryOwner owner, Bundle bundle) {
        ViewModelProvider.AndroidViewModelFactory androidViewModelFactory;
        M.p(owner, "owner");
        this.savedStateRegistry = owner.getSavedStateRegistry();
        this.lifecycle = owner.getLifecycle();
        this.defaultArgs = bundle;
        this.application = application;
        if (application != null) {
            androidViewModelFactory = ViewModelProvider.AndroidViewModelFactory.Companion.getInstance(application);
        } else {
            androidViewModelFactory = new ViewModelProvider.AndroidViewModelFactory();
        }
        this.factory = androidViewModelFactory;
    }

    public final <T extends ViewModel> T create(String key, Class<T> modelClass) {
        Constructor findMatchingConstructor;
        T t10;
        Application application;
        M.p(key, "key");
        M.p(modelClass, "modelClass");
        if (this.lifecycle != null) {
            boolean isAssignableFrom = AndroidViewModel.class.isAssignableFrom(modelClass);
            if (isAssignableFrom && this.application != null) {
                findMatchingConstructor = SavedStateViewModelFactoryKt.findMatchingConstructor(modelClass, SavedStateViewModelFactoryKt.access$getANDROID_VIEWMODEL_SIGNATURE$p());
            } else {
                findMatchingConstructor = SavedStateViewModelFactoryKt.findMatchingConstructor(modelClass, SavedStateViewModelFactoryKt.access$getVIEWMODEL_SIGNATURE$p());
            }
            if (findMatchingConstructor == null) {
                return this.application != null ? (T) this.factory.create(modelClass) : (T) ViewModelProvider.NewInstanceFactory.Companion.getInstance().create(modelClass);
            }
            SavedStateHandleController create = LegacySavedStateHandleController.create(this.savedStateRegistry, this.lifecycle, key, this.defaultArgs);
            if (isAssignableFrom && (application = this.application) != null) {
                M.m(application);
                SavedStateHandle handle = create.getHandle();
                M.o(handle, "controller.handle");
                t10 = (T) SavedStateViewModelFactoryKt.newInstance(modelClass, findMatchingConstructor, application, handle);
            } else {
                SavedStateHandle handle2 = create.getHandle();
                M.o(handle2, "controller.handle");
                t10 = (T) SavedStateViewModelFactoryKt.newInstance(modelClass, findMatchingConstructor, handle2);
            }
            t10.setTagIfAbsent("androidx.lifecycle.savedstate.vm.tag", create);
            return t10;
        }
        throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
    }

    @Override
    public <T extends ViewModel> T create(Class<T> modelClass) {
        M.p(modelClass, "modelClass");
        String canonicalName = modelClass.getCanonicalName();
        if (canonicalName != null) {
            return (T) create(canonicalName, modelClass);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }
}
