package Ad;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.collection.SparseArrayCompat;
import androidx.viewpager.widget.PagerAdapter;
import java.lang.ref.WeakReference;

public class f extends PagerAdapter {

    public final g f516a;

    public final SparseArrayCompat<WeakReference<View>> f517b;

    public final LayoutInflater f518c;

    public f(g gVar) {
        this.f516a = gVar;
        this.f517b = new SparseArrayCompat<>(gVar.size());
        this.f518c = LayoutInflater.from(gVar.a());
    }

    public View a(int i10) {
        WeakReference<View> weakReference = this.f517b.get(i10);
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e b(int i10) {
        return (e) this.f516a.get(i10);
    }

    @Override
    public void destroyItem(@NonNull ViewGroup viewGroup, int i10, @NonNull Object obj) {
        this.f517b.remove(i10);
        viewGroup.removeView((View) obj);
    }

    @Override
    public int getCount() {
        return this.f516a.size();
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
        View c10 = b(i10).c(this.f518c, viewGroup);
        viewGroup.addView(c10);
        this.f517b.put(i10, new WeakReference<>(c10));
        return c10;
    }

    @Override
    public boolean isViewFromObject(@NonNull View view, @NonNull Object obj) {
        return obj == view;
    }
}
