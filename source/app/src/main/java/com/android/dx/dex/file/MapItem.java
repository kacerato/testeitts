package com.android.dx.dex.file;

import com.android.dx.util.AnnotatedOutput;
import com.android.dx.util.Hex;
import java.util.ArrayList;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public final class MapItem extends OffsettedItem {
    private static final int ALIGNMENT = 4;
    private static final int WRITE_SIZE = 12;
    private final Item firstItem;
    private final int itemCount;
    private final Item lastItem;
    private final Section section;
    private final ItemType type;

    private MapItem(ItemType itemType, Section section, Item item, Item item2, int i10) {
        super(4, 12);
        if (itemType == null) {
            throw new NullPointerException("type == null");
        }
        if (section == null) {
            throw new NullPointerException("section == null");
        }
        if (item == null) {
            throw new NullPointerException("firstItem == null");
        }
        if (item2 == null) {
            throw new NullPointerException("lastItem == null");
        }
        if (i10 > 0) {
            this.type = itemType;
            this.section = section;
            this.firstItem = item;
            this.lastItem = item2;
            this.itemCount = i10;
            return;
        }
        throw new IllegalArgumentException("itemCount <= 0");
    }

    public static void addMap(Section[] sectionArr, MixedItemSection mixedItemSection) {
        if (sectionArr == null) {
            throw new NullPointerException("sections == null");
        }
        if (mixedItemSection.items().size() != 0) {
            throw new IllegalArgumentException("mapSection.items().size() != 0");
        }
        ArrayList arrayList = new ArrayList(50);
        for (Section section : sectionArr) {
            ItemType itemType = null;
            Item item = null;
            Item item2 = null;
            int i10 = 0;
            for (Item item3 : section.items()) {
                ItemType itemType2 = item3.itemType();
                if (itemType2 != itemType) {
                    if (i10 != 0) {
                        arrayList.add(new MapItem(itemType, section, item, item2, i10));
                    }
                    item = item3;
                    itemType = itemType2;
                    i10 = 0;
                }
                i10++;
                item2 = item3;
            }
            if (i10 != 0) {
                arrayList.add(new MapItem(itemType, section, item, item2, i10));
            } else if (section == mixedItemSection) {
                arrayList.add(new MapItem(mixedItemSection));
            }
        }
        mixedItemSection.add(new UniformListItem(ItemType.TYPE_MAP_LIST, arrayList));
    }

    @Override
    public void addContents(DexFile dexFile) {
    }

    @Override
    public ItemType itemType() {
        return ItemType.TYPE_MAP_ITEM;
    }

    @Override
    public final String toHuman() {
        return toString();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(100);
        stringBuffer.append(MapItem.class.getName());
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        stringBuffer.append(this.section.toString());
        stringBuffer.append(C15883c.f126249O);
        stringBuffer.append(this.type.toHuman());
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        return stringBuffer.toString();
    }

    @Override
    public void writeTo0(DexFile dexFile, AnnotatedOutput annotatedOutput) {
        int mapValue = this.type.getMapValue();
        Item item = this.firstItem;
        int fileOffset = item == null ? this.section.getFileOffset() : this.section.getAbsoluteItemOffset(item);
        if (annotatedOutput.annotates()) {
            annotatedOutput.annotate(0, offsetString() + C15883c.f126249O + this.type.getTypeName() + " map");
            annotatedOutput.annotate(2, "  type:   " + Hex.u2(mapValue) + " // " + this.type.toString());
            annotatedOutput.annotate(2, "  unused: 0");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("  size:   ");
            sb2.append(Hex.u4(this.itemCount));
            annotatedOutput.annotate(4, sb2.toString());
            annotatedOutput.annotate(4, "  offset: " + Hex.u4(fileOffset));
        }
        annotatedOutput.writeShort(mapValue);
        annotatedOutput.writeShort(0);
        annotatedOutput.writeInt(this.itemCount);
        annotatedOutput.writeInt(fileOffset);
    }

    private MapItem(Section section) {
        super(4, 12);
        if (section != null) {
            this.type = ItemType.TYPE_MAP_LIST;
            this.section = section;
            this.firstItem = null;
            this.lastItem = null;
            this.itemCount = 1;
            return;
        }
        throw new NullPointerException("section == null");
    }
}
