package x1;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Property;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleableRes;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.internal.core.JavaElement;

public class h {

    public static final String f127901c = "MotionSpec";

    public final SimpleArrayMap<String, i> f127902a = new SimpleArrayMap<>();

    public final SimpleArrayMap<String, PropertyValuesHolder[]> f127903b = new SimpleArrayMap<>();

    public static void a(@NonNull h hVar, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            hVar.l(objectAnimator.getPropertyName(), objectAnimator.getValues());
            hVar.m(objectAnimator.getPropertyName(), i.b(objectAnimator));
        } else {
            throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + ((Object) animator));
        }
    }

    @Nullable
    public static h c(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i10) {
        int resourceId;
        if (!typedArray.hasValue(i10) || (resourceId = typedArray.getResourceId(i10, 0)) == 0) {
            return null;
        }
        return d(context, resourceId);
    }

    @Nullable
    public static h d(@NonNull Context context, @AnimatorRes int i10) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i10);
            if (loadAnimator instanceof AnimatorSet) {
                return e(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return e(arrayList);
        } catch (Exception e10) {
            Log.w(f127901c, "Can't load animation resource ID #0x" + Integer.toHexString(i10), e10);
            return null;
        }
    }

    @NonNull
    public static h e(@NonNull List<Animator> list) {
        h hVar = new h();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            a(hVar, list.get(i10));
        }
        return hVar;
    }

    @NonNull
    public final PropertyValuesHolder[] b(@NonNull PropertyValuesHolder[] propertyValuesHolderArr) {
        PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[propertyValuesHolderArr.length];
        for (int i10 = 0; i10 < propertyValuesHolderArr.length; i10++) {
            propertyValuesHolderArr2[i10] = propertyValuesHolderArr[i10].m84clone();
        }
        return propertyValuesHolderArr2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            return this.f127902a.equals(((h) obj).f127902a);
        }
        return false;
    }

    @NonNull
    public <T> ObjectAnimator f(@NonNull String str, @NonNull T t10, @NonNull Property<T, ?> property) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(t10, g(str));
        ofPropertyValuesHolder.setProperty(property);
        h(str).a(ofPropertyValuesHolder);
        return ofPropertyValuesHolder;
    }

    @NonNull
    public PropertyValuesHolder[] g(String str) {
        if (j(str)) {
            return b(this.f127903b.get(str));
        }
        throw new IllegalArgumentException();
    }

    public i h(String str) {
        if (k(str)) {
            return this.f127902a.get(str);
        }
        throw new IllegalArgumentException();
    }

    public int hashCode() {
        return this.f127902a.hashCode();
    }

    public long i() {
        int size = this.f127902a.size();
        long j10 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            i valueAt = this.f127902a.valueAt(i10);
            j10 = Math.max(j10, valueAt.c() + valueAt.d());
        }
        return j10;
    }

    public boolean j(String str) {
        return this.f127903b.get(str) != null;
    }

    public boolean k(String str) {
        return this.f127902a.get(str) != null;
    }

    public void l(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.f127903b.put(str, propertyValuesHolderArr);
    }

    public void m(String str, @Nullable i iVar) {
        this.f127902a.put(str, iVar);
    }

    @NonNull
    public String toString() {
        return '\n' + getClass().getName() + JavaElement.JEM_COMPILATIONUNIT + Integer.toHexString(System.identityHashCode(this)) + " timings: " + ((Object) this.f127902a) + "}\n";
    }
}
