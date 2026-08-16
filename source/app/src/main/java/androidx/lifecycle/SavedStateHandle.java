package androidx.lifecycle;

import Lf.o;
import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.core.os.BundleKt;
import androidx.savedstate.SavedStateRegistry;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import jg.C13844k;
import jg.E;
import jg.U;
import jg.W;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import nf.v0;
import pf.A0;
import pf.o0;

public final class SavedStateHandle {
    private static final String KEYS = "keys";
    private static final String VALUES = "values";
    private final Map<String, E<Object>> flows;
    private final Map<String, SavingStateLiveData<?>> liveDatas;
    private final Map<String, Object> regular;
    private final SavedStateRegistry.SavedStateProvider savedStateProvider;
    private final Map<String, SavedStateRegistry.SavedStateProvider> savedStateProviders;
    public static final Companion Companion = new Companion(null);
    private static final Class<? extends Object>[] ACCEPTABLE_CLASSES = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @o
        public final SavedStateHandle createHandle(Bundle bundle, Bundle bundle2) {
            if (bundle == null) {
                if (bundle2 == null) {
                    return new SavedStateHandle();
                }
                HashMap hashMap = new HashMap();
                for (String key : bundle2.keySet()) {
                    M.o(key, "key");
                    hashMap.put(key, bundle2.get(key));
                }
                return new SavedStateHandle(hashMap);
            }
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(SavedStateHandle.KEYS);
            ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(SavedStateHandle.VALUES);
            if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
                throw new IllegalStateException("Invalid bundle passed as restored state");
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int size = parcelableArrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                Object obj = parcelableArrayList.get(i10);
                if (obj == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
                }
                linkedHashMap.put((String) obj, parcelableArrayList2.get(i10));
            }
            return new SavedStateHandle(linkedHashMap);
        }

        public final boolean validateValue(Object obj) {
            if (obj == null) {
                return true;
            }
            for (Class cls : SavedStateHandle.ACCEPTABLE_CLASSES) {
                M.m(cls);
                if (cls.isInstance(obj)) {
                    return true;
                }
            }
            return false;
        }

        private Companion() {
        }
    }

    public SavedStateHandle(Map<String, ? extends Object> initialState) {
        M.p(initialState, "initialState");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.regular = linkedHashMap;
        this.savedStateProviders = new LinkedHashMap();
        this.liveDatas = new LinkedHashMap();
        this.flows = new LinkedHashMap();
        this.savedStateProvider = new SavedStateRegistry.SavedStateProvider() {
            @Override
            public final Bundle saveState() {
                Bundle m685savedStateProvider$lambda0;
                m685savedStateProvider$lambda0 = SavedStateHandle.m685savedStateProvider$lambda0(SavedStateHandle.this);
                return m685savedStateProvider$lambda0;
            }
        };
        linkedHashMap.putAll(initialState);
    }

    @o
    public static final SavedStateHandle createHandle(Bundle bundle, Bundle bundle2) {
        return Companion.createHandle(bundle, bundle2);
    }

    private final <T> MutableLiveData<T> getLiveDataInternal(String str, boolean z10, T t10) {
        SavingStateLiveData<?> savingStateLiveData;
        SavingStateLiveData<?> savingStateLiveData2 = this.liveDatas.get(str);
        SavingStateLiveData<?> savingStateLiveData3 = savingStateLiveData2 instanceof MutableLiveData ? savingStateLiveData2 : null;
        if (savingStateLiveData3 != null) {
            return savingStateLiveData3;
        }
        if (this.regular.containsKey(str)) {
            savingStateLiveData = new SavingStateLiveData<>(this, str, this.regular.get(str));
        } else if (z10) {
            this.regular.put(str, t10);
            savingStateLiveData = new SavingStateLiveData<>(this, str, t10);
        } else {
            savingStateLiveData = new SavingStateLiveData<>(this, str);
        }
        this.liveDatas.put(str, savingStateLiveData);
        return savingStateLiveData;
    }

    public static final Bundle m685savedStateProvider$lambda0(SavedStateHandle this$0) {
        M.p(this$0, "this$0");
        for (Map.Entry entry : o0.F0(this$0.savedStateProviders).entrySet()) {
            this$0.set((String) entry.getKey(), ((SavedStateRegistry.SavedStateProvider) entry.getValue()).saveState());
        }
        Set<String> o10 = this$0.regular.o();
        ArrayList arrayList = new ArrayList(o10.size());
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (String str : o10) {
            arrayList.add(str);
            arrayList2.add(this$0.regular.get(str));
        }
        return BundleKt.bundleOf(v0.a(KEYS, arrayList), v0.a(VALUES, arrayList2));
    }

    public final void clearSavedStateProvider(String key) {
        M.p(key, "key");
        this.savedStateProviders.remove(key);
    }

    public final boolean contains(String key) {
        M.p(key, "key");
        return this.regular.containsKey(key);
    }

    public final <T> T get(String key) {
        M.p(key, "key");
        return (T) this.regular.get(key);
    }

    public final <T> MutableLiveData<T> getLiveData(String key) {
        M.p(key, "key");
        return getLiveDataInternal(key, false, null);
    }

    public final <T> U<T> getStateFlow(String key, T t10) {
        M.p(key, "key");
        Map<String, E<Object>> map = this.flows;
        E<Object> e10 = map.get(key);
        if (e10 == null) {
            if (!this.regular.containsKey(key)) {
                this.regular.put(key, t10);
            }
            e10 = W.a(this.regular.get(key));
            this.flows.put(key, e10);
            map.put(key, e10);
        }
        return C13844k.m(e10);
    }

    public final Set<String> keys() {
        return A0.D(A0.D(this.regular.o(), this.savedStateProviders.o()), this.liveDatas.o());
    }

    public final <T> T remove(String key) {
        M.p(key, "key");
        T t10 = (T) this.regular.remove(key);
        SavingStateLiveData<?> remove = this.liveDatas.remove(key);
        if (remove != null) {
            remove.detach();
        }
        this.flows.remove(key);
        return t10;
    }

    public final SavedStateRegistry.SavedStateProvider savedStateProvider() {
        return this.savedStateProvider;
    }

    public final <T> void set(String key, T t10) {
        M.p(key, "key");
        if (!Companion.validateValue(t10)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't put value with type ");
            M.m(t10);
            sb2.append((Object) t10.getClass());
            sb2.append(" into saved state");
            throw new IllegalArgumentException(sb2.toString());
        }
        SavingStateLiveData<?> savingStateLiveData = this.liveDatas.get(key);
        SavingStateLiveData<?> savingStateLiveData2 = savingStateLiveData instanceof MutableLiveData ? savingStateLiveData : null;
        if (savingStateLiveData2 != null) {
            savingStateLiveData2.setValue(t10);
        } else {
            this.regular.put(key, t10);
        }
        E<Object> e10 = this.flows.get(key);
        if (e10 == null) {
            return;
        }
        e10.setValue(t10);
    }

    public final void setSavedStateProvider(String key, SavedStateRegistry.SavedStateProvider provider) {
        M.p(key, "key");
        M.p(provider, "provider");
        this.savedStateProviders.put(key, provider);
    }

    public final <T> MutableLiveData<T> getLiveData(String key, T t10) {
        M.p(key, "key");
        return getLiveDataInternal(key, true, t10);
    }

    public static final class SavingStateLiveData<T> extends MutableLiveData<T> {
        private SavedStateHandle handle;
        private String key;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SavingStateLiveData(SavedStateHandle savedStateHandle, String key, T t10) {
            super(t10);
            M.p(key, "key");
            this.key = key;
            this.handle = savedStateHandle;
        }

        public final void detach() {
            this.handle = null;
        }

        @Override
        public void setValue(T t10) {
            SavedStateHandle savedStateHandle = this.handle;
            if (savedStateHandle != null) {
                savedStateHandle.regular.put(this.key, t10);
                E e10 = (E) savedStateHandle.flows.get(this.key);
                if (e10 != null) {
                    e10.setValue(t10);
                }
            }
            super.setValue(t10);
        }

        public SavingStateLiveData(SavedStateHandle savedStateHandle, String key) {
            M.p(key, "key");
            this.key = key;
            this.handle = savedStateHandle;
        }
    }

    public SavedStateHandle() {
        this.regular = new LinkedHashMap();
        this.savedStateProviders = new LinkedHashMap();
        this.liveDatas = new LinkedHashMap();
        this.flows = new LinkedHashMap();
        this.savedStateProvider = new SavedStateRegistry.SavedStateProvider() {
            @Override
            public final Bundle saveState() {
                Bundle m685savedStateProvider$lambda0;
                m685savedStateProvider$lambda0 = SavedStateHandle.m685savedStateProvider$lambda0(SavedStateHandle.this);
                return m685savedStateProvider$lambda0;
            }
        };
    }
}
