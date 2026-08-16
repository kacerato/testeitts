.class public Lcom/android/tools/r8/dex/E;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/dex/E;->a:I

    sget-boolean p1, Lcom/android/tools/r8/dex/E;->e:Z

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput p3, p0, Lcom/android/tools/r8/dex/E;->b:I

    iput p4, p0, Lcom/android/tools/r8/dex/E;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/dex/E;->d:I

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 2
    const-string p0, "Unknown"

    return-object p0

    .line 3
    :pswitch_0
    const-string p0, "AnnotationsDirectory"

    return-object p0

    .line 4
    :pswitch_1
    const-string p0, "EncodedArrays"

    return-object p0

    .line 5
    :pswitch_2
    const-string p0, "Annotation"

    return-object p0

    .line 6
    :pswitch_3
    const-string p0, "DebugInfo"

    return-object p0

    .line 7
    :pswitch_4
    const-string p0, "StringData"

    return-object p0

    .line 8
    :pswitch_5
    const-string p0, "Code"

    return-object p0

    .line 9
    :pswitch_6
    const-string p0, "ClassData"

    return-object p0

    .line 10
    :pswitch_7
    const-string p0, "AnnotationSets"

    return-object p0

    .line 11
    :pswitch_8
    const-string p0, "AnnotationSetRefs"

    return-object p0

    .line 12
    :pswitch_9
    const-string p0, "TypeLists"

    return-object p0

    .line 13
    :pswitch_a
    const-string p0, "Maps"

    return-object p0

    .line 14
    :pswitch_b
    const-string p0, "ClassDefs"

    return-object p0

    .line 15
    :pswitch_c
    const-string p0, "Methods"

    return-object p0

    .line 16
    :pswitch_d
    const-string p0, "Fields"

    return-object p0

    .line 17
    :pswitch_e
    const-string p0, "Protos"

    return-object p0

    .line 18
    :pswitch_f
    const-string p0, "Types"

    return-object p0

    .line 19
    :pswitch_10
    const-string p0, "Strings"

    return-object p0

    .line 20
    :pswitch_11
    const-string p0, "Header"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1000
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2000
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a()[I
    .locals 1

    const/16 v0, 0x12

    .line 1
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x2005
        0x0
        0x2003
        0x4
        0x1002
        0x1
        0x1000
        0x3
        0x5
        0x2
        0x2002
        0x2000
        0x1001
        0x2006
        0x2004
        0x1003
        0x6
        0x2001
    .end array-data
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/dex/E;->a:I

    invoke-static {v0}, Lcom/android/tools/r8/dex/E;->a(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/dex/E;->c:I

    iget v2, p0, Lcom/android/tools/r8/dex/E;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " @"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
