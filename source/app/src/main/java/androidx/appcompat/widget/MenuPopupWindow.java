package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.ListMenuItemView;
import androidx.appcompat.view.menu.MenuAdapter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import java.lang.reflect.Method;

public class MenuPopupWindow extends ListPopupWindow implements MenuItemHoverListener {
    private static final String TAG = "MenuPopupWindow";
    private static Method sSetTouchModalMethod;
    private MenuItemHoverListener mHoverListener;

    public static class Api23Impl {
        private Api23Impl() {
        }

        public static void setEnterTransition(PopupWindow popupWindow, Transition transition) {
            popupWindow.setEnterTransition(transition);
        }

        public static void setExitTransition(PopupWindow popupWindow, Transition transition) {
            popupWindow.setExitTransition(transition);
        }
    }

    public static class Api29Impl {
        private Api29Impl() {
        }

        public static void setTouchModal(PopupWindow popupWindow, boolean z10) {
            popupWindow.setTouchModal(z10);
        }
    }

    public static class MenuDropDownListView extends DropDownListView {
        final int mAdvanceKey;
        private MenuItemHoverListener mHoverListener;
        private MenuItem mHoveredMenuItem;
        final int mRetreatKey;

        public static class Api17Impl {
            private Api17Impl() {
            }

            public static int getLayoutDirection(Configuration configuration) {
                return configuration.getLayoutDirection();
            }
        }

        public MenuDropDownListView(Context context, boolean z10) {
            super(context, z10);
            if (1 == Api17Impl.getLayoutDirection(context.getResources().getConfiguration())) {
                this.mAdvanceKey = 21;
                this.mRetreatKey = 22;
            } else {
                this.mAdvanceKey = 22;
                this.mRetreatKey = 21;
            }
        }

        public void clearSelection() {
            setSelection(-1);
        }

        @Override
        public boolean hasFocus() {
            return super.hasFocus();
        }

        @Override
        public boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override
        public boolean isFocused() {
            return super.isFocused();
        }

        @Override
        public boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override
        public int lookForSelectablePosition(int i10, boolean z10) {
            return super.lookForSelectablePosition(i10, z10);
        }

        @Override
        public int measureHeightOfChildrenCompat(int i10, int i11, int i12, int i13, int i14) {
            return super.measureHeightOfChildrenCompat(i10, i11, i12, i13, i14);
        }

        @Override
        public boolean onForwardedEvent(MotionEvent motionEvent, int i10) {
            return super.onForwardedEvent(motionEvent, i10);
        }

        @Override
        public boolean onHoverEvent(MotionEvent motionEvent) {
            MenuAdapter menuAdapter;
            int i10;
            int pointToPosition;
            int i11;
            if (this.mHoverListener != null) {
                ListAdapter adapter2 = getAdapter2();
                if (adapter2 instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter2;
                    i10 = headerViewListAdapter.getHeadersCount();
                    menuAdapter = (MenuAdapter) headerViewListAdapter.getWrappedAdapter();
                } else {
                    menuAdapter = (MenuAdapter) adapter2;
                    i10 = 0;
                }
                MenuItemImpl item = (motionEvent.getAction() == 10 || (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i11 = pointToPosition - i10) < 0 || i11 >= menuAdapter.getCount()) ? null : menuAdapter.getItem(i11);
                MenuItem menuItem = this.mHoveredMenuItem;
                if (menuItem != item) {
                    MenuBuilder adapterMenu = menuAdapter.getAdapterMenu();
                    if (menuItem != null) {
                        this.mHoverListener.onItemHoverExit(adapterMenu, menuItem);
                    }
                    this.mHoveredMenuItem = item;
                    if (item != null) {
                        this.mHoverListener.onItemHoverEnter(adapterMenu, item);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override
        public boolean onKeyDown(int i10, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i10 == this.mAdvanceKey) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView == null || i10 != this.mRetreatKey) {
                return super.onKeyDown(i10, keyEvent);
            }
            setSelection(-1);
            ListAdapter adapter2 = getAdapter2();
            (adapter2 instanceof HeaderViewListAdapter ? (MenuAdapter) ((HeaderViewListAdapter) adapter2).getWrappedAdapter() : (MenuAdapter) adapter2).getAdapterMenu().close(false);
            return true;
        }

        @Override
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        public void setHoverListener(MenuItemHoverListener menuItemHoverListener) {
            this.mHoverListener = menuItemHoverListener;
        }

        @Override
        public void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                sSetTouchModalMethod = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i(TAG, "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public MenuPopupWindow(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }

    @Override
    public DropDownListView createDropDownListView(Context context, boolean z10) {
        MenuDropDownListView menuDropDownListView = new MenuDropDownListView(context, z10);
        menuDropDownListView.setHoverListener(this);
        return menuDropDownListView;
    }

    @Override
    public void onItemHoverEnter(MenuBuilder menuBuilder, MenuItem menuItem) {
        MenuItemHoverListener menuItemHoverListener = this.mHoverListener;
        if (menuItemHoverListener != null) {
            menuItemHoverListener.onItemHoverEnter(menuBuilder, menuItem);
        }
    }

    @Override
    public void onItemHoverExit(MenuBuilder menuBuilder, MenuItem menuItem) {
        MenuItemHoverListener menuItemHoverListener = this.mHoverListener;
        if (menuItemHoverListener != null) {
            menuItemHoverListener.onItemHoverExit(menuBuilder, menuItem);
        }
    }

    public void setEnterTransition(Object obj) {
        Api23Impl.setEnterTransition(this.mPopup, (Transition) obj);
    }

    public void setExitTransition(Object obj) {
        Api23Impl.setExitTransition(this.mPopup, (Transition) obj);
    }

    public void setHoverListener(MenuItemHoverListener menuItemHoverListener) {
        this.mHoverListener = menuItemHoverListener;
    }

    public void setTouchModal(boolean z10) {
        if (Build.VERSION.SDK_INT > 28) {
            Api29Impl.setTouchModal(this.mPopup, z10);
            return;
        }
        Method method = sSetTouchModalMethod;
        if (method != null) {
            try {
                method.invoke(this.mPopup, Boolean.valueOf(z10));
            } catch (Exception unused) {
                Log.i(TAG, "Could not invoke setTouchModal() on PopupWindow. Oh well.");
            }
        }
    }
}
