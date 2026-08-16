package com.github.florent37.expansionpanel.viewgroup;

import android.view.View;
import android.view.ViewGroup;
import com.github.florent37.expansionpanel.ExpansionLayout;

class ExpansionViewGroupManager {
    private ExpansionLayoutCollection expansionLayoutCollection = new ExpansionLayoutCollection();
    private final ViewGroup viewGroup;

    public ExpansionViewGroupManager(ViewGroup viewGroup) {
        this.viewGroup = viewGroup;
    }

    private void findExpansionsViews(View view) {
        if (view instanceof ExpansionLayout) {
            this.expansionLayoutCollection.add((ExpansionLayout) view);
            return;
        }
        if (!(view instanceof ViewGroup)) {
            return;
        }
        int i10 = 0;
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i10 >= viewGroup.getChildCount()) {
                return;
            }
            findExpansionsViews(viewGroup.getChildAt(i10));
            i10++;
        }
    }

    public void onViewAdded() {
        findExpansionsViews(this.viewGroup);
    }

    public void setOpenOnlyOne(boolean z10) {
        this.expansionLayoutCollection.openOnlyOne(z10);
    }
}
