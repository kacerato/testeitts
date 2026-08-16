package T1;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import com.google.android.material.internal.k;
import z1.C16242b;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class d implements MenuPresenter {

    public MenuBuilder f23922b;

    public c f23923c;

    public boolean f23924d = false;

    public int f23925e;

    public static class a implements Parcelable {
        public static final Parcelable.Creator<a> CREATOR = new C0569a();

        public int f23926b;

        @Nullable
        public k f23927c;

        public static class C0569a implements Parcelable.Creator<a> {
            @Override
            @NonNull
            public a createFromParcel(@NonNull Parcel parcel) {
                return new a(parcel);
            }

            @Override
            @NonNull
            public a[] newArray(int i10) {
                return new a[i10];
            }
        }

        public a() {
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            parcel.writeInt(this.f23926b);
            parcel.writeParcelable(this.f23927c, 0);
        }

        public a(@NonNull Parcel parcel) {
            this.f23926b = parcel.readInt();
            this.f23927c = (k) parcel.readParcelable(getClass().getClassLoader());
        }
    }

    public void a(int i10) {
        this.f23925e = i10;
    }

    public void b(@NonNull c cVar) {
        this.f23923c = cVar;
    }

    public void c(boolean z10) {
        this.f23924d = z10;
    }

    @Override
    public boolean collapseItemActionView(@Nullable MenuBuilder menuBuilder, @Nullable MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override
    public boolean expandItemActionView(@Nullable MenuBuilder menuBuilder, @Nullable MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override
    public boolean flagActionItems() {
        return false;
    }

    @Override
    public int getId() {
        return this.f23925e;
    }

    @Override
    @Nullable
    public MenuView getMenuView(@Nullable ViewGroup viewGroup) {
        return this.f23923c;
    }

    @Override
    public void initForMenu(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this.f23922b = menuBuilder;
        this.f23923c.initialize(menuBuilder);
    }

    @Override
    public void onCloseMenu(@Nullable MenuBuilder menuBuilder, boolean z10) {
    }

    @Override
    public void onRestoreInstanceState(@NonNull Parcelable parcelable) {
        if (parcelable instanceof a) {
            a aVar = (a) parcelable;
            this.f23923c.o(aVar.f23926b);
            this.f23923c.setBadgeDrawables(C16242b.e(this.f23923c.getContext(), aVar.f23927c));
        }
    }

    @Override
    @NonNull
    public Parcelable onSaveInstanceState() {
        a aVar = new a();
        aVar.f23926b = this.f23923c.getSelectedItemId();
        aVar.f23927c = C16242b.f(this.f23923c.getBadgeDrawables());
        return aVar;
    }

    @Override
    public boolean onSubMenuSelected(@Nullable SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Override
    public void setCallback(@Nullable MenuPresenter.Callback callback) {
    }

    @Override
    public void updateMenuView(boolean z10) {
        if (this.f23924d) {
            return;
        }
        if (z10) {
            this.f23923c.c();
        } else {
            this.f23923c.p();
        }
    }
}
