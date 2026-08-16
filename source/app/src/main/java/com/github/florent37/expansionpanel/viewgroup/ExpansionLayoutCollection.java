package com.github.florent37.expansionpanel.viewgroup;

import com.github.florent37.expansionpanel.ExpansionLayout;
import java.util.Collection;
import java.util.HashSet;

public class ExpansionLayoutCollection {
    private final Collection<ExpansionLayout> expansions = new HashSet();
    private boolean openOnlyOne = true;
    private final ExpansionLayout.IndicatorListener indicatorListener = new ExpansionLayout.IndicatorListener() {
        @Override
        public void onStartedExpand(ExpansionLayout expansionLayout, boolean z10) {
            if (z10 && ExpansionLayoutCollection.this.openOnlyOne) {
                for (ExpansionLayout expansionLayout2 : ExpansionLayoutCollection.this.expansions) {
                    if (expansionLayout2 != expansionLayout) {
                        expansionLayout2.collapse(true);
                    }
                }
            }
        }
    };

    public ExpansionLayoutCollection add(ExpansionLayout expansionLayout) {
        this.expansions.add(expansionLayout);
        expansionLayout.addIndicatorListener(this.indicatorListener);
        return this;
    }

    public ExpansionLayoutCollection addAll(ExpansionLayout... expansionLayoutArr) {
        for (ExpansionLayout expansionLayout : expansionLayoutArr) {
            if (expansionLayout != null) {
                add(expansionLayout);
            }
        }
        return this;
    }

    public ExpansionLayoutCollection openOnlyOne(boolean z10) {
        this.openOnlyOne = z10;
        return this;
    }

    public ExpansionLayoutCollection remove(ExpansionLayout expansionLayout) {
        if (expansionLayout != null) {
            this.expansions.remove(expansionLayout);
            expansionLayout.removeIndicatorListener(this.indicatorListener);
        }
        return this;
    }

    public ExpansionLayoutCollection addAll(Collection<ExpansionLayout> collection) {
        for (ExpansionLayout expansionLayout : collection) {
            if (expansionLayout != null) {
                add(expansionLayout);
            }
        }
        return this;
    }
}
