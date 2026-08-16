package Bd;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.collection.SparseArrayCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import java.lang.ref.WeakReference;

public class c extends FragmentPagerAdapter {

    public final d f1695a;

    public final SparseArrayCompat<WeakReference<Fragment>> f1696b;

    public c(FragmentManager fragmentManager, d dVar) {
        super(fragmentManager);
        this.f1695a = dVar;
        this.f1696b = new SparseArrayCompat<>(dVar.size());
    }

    public Fragment a(int i10) {
        WeakReference<Fragment> weakReference = this.f1696b.get(i10);
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b b(int i10) {
        return (b) this.f1695a.get(i10);
    }

    @Override
    public void destroyItem(@NonNull ViewGroup viewGroup, int i10, @NonNull Object obj) {
        this.f1696b.remove(i10);
        super.destroyItem(viewGroup, i10, obj);
    }

    @Override
    public int getCount() {
        return this.f1695a.size();
    }

    @Override
    public Fragment getItem(int i10) {
        return b(i10).e(this.f1695a.a(), i10);
    }

    @Override
    public CharSequence getPageTitle(int i10) {
        return b(i10).a();
    }

    @Override
    public float getPageWidth(int i10) {
        return super.getPageWidth(i10);
    }

    @Override
    @NonNull
    public Object instantiateItem(@NonNull ViewGroup viewGroup, int i10) {
        Object instantiateItem = super.instantiateItem(viewGroup, i10);
        if (instantiateItem instanceof Fragment) {
            this.f1696b.put(i10, new WeakReference<>((Fragment) instantiateItem));
        }
        return instantiateItem;
    }
}
