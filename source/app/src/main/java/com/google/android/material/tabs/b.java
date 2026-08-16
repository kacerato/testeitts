package com.google.android.material.tabs;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;

public final class b {

    @NonNull
    public final TabLayout f64995a;

    @NonNull
    public final ViewPager2 f64996b;

    public final boolean f64997c;

    public final boolean f64998d;

    public final InterfaceC0968b f64999e;

    @Nullable
    public RecyclerView.Adapter<?> f65000f;

    public boolean f65001g;

    @Nullable
    public c f65002h;

    @Nullable
    public TabLayout.f f65003i;

    @Nullable
    public RecyclerView.AdapterDataObserver f65004j;

    public class a extends RecyclerView.AdapterDataObserver {
        public a() {
        }

        @Override
        public void onChanged() {
            b.this.d();
        }

        @Override
        public void onItemRangeChanged(int i10, int i11) {
            b.this.d();
        }

        @Override
        public void onItemRangeInserted(int i10, int i11) {
            b.this.d();
        }

        @Override
        public void onItemRangeMoved(int i10, int i11, int i12) {
            b.this.d();
        }

        @Override
        public void onItemRangeRemoved(int i10, int i11) {
            b.this.d();
        }

        @Override
        public void onItemRangeChanged(int i10, int i11, @Nullable Object obj) {
            b.this.d();
        }
    }

    public interface InterfaceC0968b {
        void a(@NonNull TabLayout.i iVar, int i10);
    }

    public static class c extends ViewPager2.OnPageChangeCallback {

        @NonNull
        public final WeakReference<TabLayout> f65006a;

        public int f65007b;

        public int f65008c;

        public c(TabLayout tabLayout) {
            this.f65006a = new WeakReference<>(tabLayout);
            a();
        }

        public void a() {
            this.f65008c = 0;
            this.f65007b = 0;
        }

        @Override
        public void onPageScrollStateChanged(int i10) {
            this.f65007b = this.f65008c;
            this.f65008c = i10;
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            TabLayout tabLayout = this.f65006a.get();
            if (tabLayout != null) {
                int i12 = this.f65008c;
                tabLayout.Q(i10, f10, i12 != 2 || this.f65007b == 1, (i12 == 2 && this.f65007b == 0) ? false : true);
            }
        }

        @Override
        public void onPageSelected(int i10) {
            TabLayout tabLayout = this.f65006a.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i10 || i10 >= tabLayout.getTabCount()) {
                return;
            }
            int i11 = this.f65008c;
            tabLayout.N(tabLayout.z(i10), i11 == 0 || (i11 == 2 && this.f65007b == 0));
        }
    }

    public static class d implements TabLayout.f {

        public final ViewPager2 f65009a;

        public final boolean f65010b;

        public d(ViewPager2 viewPager2, boolean z10) {
            this.f65009a = viewPager2;
            this.f65010b = z10;
        }

        @Override
        public void a(@NonNull TabLayout.i iVar) {
            this.f65009a.setCurrentItem(iVar.k(), this.f65010b);
        }

        @Override
        public void b(TabLayout.i iVar) {
        }

        @Override
        public void c(TabLayout.i iVar) {
        }
    }

    public b(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, @NonNull InterfaceC0968b interfaceC0968b) {
        this(tabLayout, viewPager2, true, interfaceC0968b);
    }

    public void a() {
        if (this.f65001g) {
            throw new IllegalStateException("TabLayoutMediator is already attached");
        }
        RecyclerView.Adapter<?> adapter = this.f64996b.getAdapter();
        this.f65000f = adapter;
        if (adapter == null) {
            throw new IllegalStateException("TabLayoutMediator attached before ViewPager2 has an adapter");
        }
        this.f65001g = true;
        c cVar = new c(this.f64995a);
        this.f65002h = cVar;
        this.f64996b.registerOnPageChangeCallback(cVar);
        d dVar = new d(this.f64996b, this.f64998d);
        this.f65003i = dVar;
        this.f64995a.d(dVar);
        if (this.f64997c) {
            a aVar = new a();
            this.f65004j = aVar;
            this.f65000f.registerAdapterDataObserver(aVar);
        }
        d();
        this.f64995a.P(this.f64996b.getCurrentItem(), 0.0f, true);
    }

    public void b() {
        RecyclerView.Adapter<?> adapter;
        if (this.f64997c && (adapter = this.f65000f) != null) {
            adapter.unregisterAdapterDataObserver(this.f65004j);
            this.f65004j = null;
        }
        this.f64995a.I(this.f65003i);
        this.f64996b.unregisterOnPageChangeCallback(this.f65002h);
        this.f65003i = null;
        this.f65002h = null;
        this.f65000f = null;
        this.f65001g = false;
    }

    public boolean c() {
        return this.f65001g;
    }

    public void d() {
        this.f64995a.G();
        RecyclerView.Adapter<?> adapter = this.f65000f;
        if (adapter != null) {
            int itemCount = adapter.getItemCount();
            for (int i10 = 0; i10 < itemCount; i10++) {
                TabLayout.i D10 = this.f64995a.D();
                this.f64999e.a(D10, i10);
                this.f64995a.h(D10, false);
            }
            if (itemCount > 0) {
                int min = Math.min(this.f64996b.getCurrentItem(), this.f64995a.getTabCount() - 1);
                if (min != this.f64995a.getSelectedTabPosition()) {
                    TabLayout tabLayout = this.f64995a;
                    tabLayout.M(tabLayout.z(min));
                }
            }
        }
    }

    public b(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, boolean z10, @NonNull InterfaceC0968b interfaceC0968b) {
        this(tabLayout, viewPager2, z10, true, interfaceC0968b);
    }

    public b(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, boolean z10, boolean z11, @NonNull InterfaceC0968b interfaceC0968b) {
        this.f64995a = tabLayout;
        this.f64996b = viewPager2;
        this.f64997c = z10;
        this.f64998d = z11;
        this.f64999e = interfaceC0968b;
    }
}
