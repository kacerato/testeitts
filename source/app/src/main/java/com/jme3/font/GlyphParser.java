package com.jme3.font;

import com.jme3.export.Savable;

public interface GlyphParser extends Savable {
    CharSequence parse(CharSequence charSequence);
}
