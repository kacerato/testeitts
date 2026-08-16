package T1;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class b extends MenuBuilder {

    @NonNull
    public final Class<?> f23888a;

    public final int f23889b;

    public b(@NonNull Context context, @NonNull Class<?> cls, int i10) {
        super(context);
        this.f23888a = cls;
        this.f23889b = i10;
    }

    public int a() {
        return this.f23889b;
    }

    @Override
    @NonNull
    public MenuItem addInternal(int i10, int i11, int i12, @NonNull CharSequence charSequence) {
        if (size() + 1 <= this.f23889b) {
            stopDispatchingItemsChanged();
            MenuItem addInternal = super.addInternal(i10, i11, i12, charSequence);
            if (addInternal instanceof MenuItemImpl) {
                ((MenuItemImpl) addInternal).setExclusiveCheckable(true);
            }
            startDispatchingItemsChanged();
            return addInternal;
        }
        String simpleName = this.f23888a.getSimpleName();
        throw new IllegalArgumentException("Maximum number of items supported by " + simpleName + " is " + this.f23889b + ". Limit can be checked with " + simpleName + "#getMaxItemCount()");
    }

    @Override
    @NonNull
    public SubMenu addSubMenu(int i10, int i11, int i12, @NonNull CharSequence charSequence) {
        throw new UnsupportedOperationException(this.f23888a.getSimpleName() + " does not support submenus");
    }
}
