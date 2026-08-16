package Bd;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.collection.SparseArrayCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import java.lang.ref.WeakReference;

public class e extends FragmentStatePagerAdapter {

    public final d f1698a;

    public final SparseArrayCompat<WeakReference<Fragment>> f1699b;

    public e(FragmentManager fragmentManager, d dVar) {
        super(fragmentManager);
        this.f1698a = dVar;
        this.f1699b = new SparseArrayCompat<>(dVar.size());
    }

    public Fragment a(int i10) {
        WeakReference<Fragment> weakReference = this.f1699b.get(i10);
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b b(int i10) {
        return (b) this.f1698a.get(i10);
    }

    @Override
    public void destroyItem(@NonNull ViewGroup viewGroup, int i10, @NonNull Object obj) {
        this.f1699b.remove(i10);
        super.destroyItem(viewGroup, i10, obj);
    }

    @Override
    public int getCount() {
        return this.f1698a.size();
    }

    @Override
    public Fragment getItem(int i10) {
        return b(i10).e(this.f1698a.a(), i10);
    }

    @Override
    public CharSequence getPageTitle(int i10) {
        return b(i10).a();
    }

    @Override
    public float getPageWidth(int i10) {
        return b(i10).b();
    }

    @Override
    @NonNull
    public Object instantiateItem(@NonNull ViewGroup viewGroup, int i10) {
        Object instantiateItem = super.instantiateItem(viewGroup, i10);
        if (instantiateItem instanceof Fragment) {
            this.f1699b.put(i10, new WeakReference<>((Fragment) instantiateItem));
        }
        return instantiateItem;
    }
}
