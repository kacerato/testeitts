.class Lcom/jme3/export/binary/BinaryClassField;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BITSET:B = 0x50t

.field public static final BOOLEAN:B = 0x3ct

.field public static final BOOLEAN_1D:B = 0x3dt

.field public static final BOOLEAN_2D:B = 0x3et

.field public static final BYTE:B = 0x0t

.field public static final BYTEBUFFER:B = 0x7at

.field public static final BYTEBUFFER_ARRAYLIST:B = 0x6ft

.field public static final BYTE_1D:B = 0x1t

.field public static final BYTE_2D:B = 0x2t

.field public static final DOUBLE:B = 0x1et

.field public static final DOUBLE_1D:B = 0x1ft

.field public static final DOUBLE_2D:B = 0x20t

.field public static final FLOAT:B = 0x14t

.field public static final FLOATBUFFER:B = 0x78t

.field public static final FLOATBUFFER_ARRAYLIST:B = 0x6et

.field public static final FLOAT_1D:B = 0x15t

.field public static final FLOAT_2D:B = 0x16t

.field public static final INT:B = 0xat

.field public static final INTBUFFER:B = 0x79t

.field public static final INT_1D:B = 0xbt

.field public static final INT_2D:B = 0xct

.field public static final INT_SAVABLE_MAP:B = 0x6bt

.field public static final LONG:B = 0x28t

.field public static final LONG_1D:B = 0x29t

.field public static final LONG_2D:B = 0x2at

.field public static final SAVABLE:B = 0x5at

.field public static final SAVABLE_1D:B = 0x5bt

.field public static final SAVABLE_2D:B = 0x5ct

.field public static final SAVABLE_ARRAYLIST:B = 0x64t

.field public static final SAVABLE_ARRAYLIST_1D:B = 0x65t

.field public static final SAVABLE_ARRAYLIST_2D:B = 0x66t

.field public static final SAVABLE_MAP:B = 0x69t

.field public static final SHORT:B = 0x32t

.field public static final SHORTBUFFER:B = 0x7bt

.field public static final SHORT_1D:B = 0x33t

.field public static final SHORT_2D:B = 0x34t

.field public static final STRING:B = 0x46t

.field public static final STRING_1D:B = 0x47t

.field public static final STRING_2D:B = 0x48t

.field public static final STRING_SAVABLE_MAP:B = 0x6at


# instance fields
.field alias:B

.field name:Ljava/lang/String;

.field type:B


# direct methods
.method public constructor <init>(Ljava/lang/String;BB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/export/binary/BinaryClassField;->name:Ljava/lang/String;

    iput-byte p2, p0, Lcom/jme3/export/binary/BinaryClassField;->alias:B

    iput-byte p3, p0, Lcom/jme3/export/binary/BinaryClassField;->type:B

    return-void
.end method
