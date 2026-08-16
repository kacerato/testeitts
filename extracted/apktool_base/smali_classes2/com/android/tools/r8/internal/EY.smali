.class public abstract Lcom/android/tools/r8/internal/EY;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/qo0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/qo0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/EY;->a:Lcom/android/tools/r8/internal/qo0;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/qo0;)Lcom/android/tools/r8/internal/EY;
    .locals 2

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->E()Lcom/android/tools/r8/internal/po0;

    move-result-object p0

    .line 19
    iget-object p0, p0, Lcom/android/tools/r8/internal/po0;->g:Ljava/lang/String;

    if-nez p0, :cond_0

    .line 20
    new-instance p0, Lcom/android/tools/r8/internal/CY;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/CY;-><init>(Lcom/android/tools/r8/internal/qo0;)V

    return-object p0

    :cond_0
    const/4 v0, -0x1

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "packageByName"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "classByNumberOfStartupMethodsMinusNumberOfNonStartupMethods"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "classByName"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "packageByNumberOfStartupMethods"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "classByNumberOfStartupMethods"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected multi startup dex distribution strategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :pswitch_0
    new-instance p0, Lcom/android/tools/r8/internal/DY;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/DY;-><init>(Lcom/android/tools/r8/internal/qo0;)V

    return-object p0

    .line 24
    :pswitch_1
    new-instance p0, Lcom/android/tools/r8/internal/AY;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/AY;-><init>(Lcom/android/tools/r8/internal/qo0;)V

    return-object p0

    .line 25
    :pswitch_2
    new-instance p0, Lcom/android/tools/r8/internal/CY;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/CY;-><init>(Lcom/android/tools/r8/internal/qo0;)V

    return-object p0

    .line 26
    :pswitch_3
    new-instance p0, Lcom/android/tools/r8/internal/av0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/av0;-><init>()V

    throw p0

    .line 27
    :pswitch_4
    new-instance p0, Lcom/android/tools/r8/internal/zY;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/zY;-><init>(Lcom/android/tools/r8/internal/qo0;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ff03f9c -> :sswitch_4
        -0x4a50bece -> :sswitch_3
        -0x49a36ce6 -> :sswitch_2
        0x2cf21a76 -> :sswitch_1
        0x42904b68 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/util/ArrayList;Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/dex/r0;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 2
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/H2;)V

    const/high16 v3, 0x10000

    .line 3
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/dex/t0;->a(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    iget-object v2, p1, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    invoke-virtual {v2}, Lcom/android/tools/r8/dex/n0;->a()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/t0;->a()V

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance p1, Lcom/android/tools/r8/dex/t0;

    iget-object v4, p2, Lcom/android/tools/r8/dex/r0;->d:Lcom/android/tools/r8/internal/IH;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/IH;->b()I

    move-result v5

    iget-object v6, p2, Lcom/android/tools/r8/dex/r0;->c:Lcom/android/tools/r8/graph/y;

    iget-object v8, p2, Lcom/android/tools/r8/dex/r0;->g:Lcom/android/tools/r8/FeatureSplit;

    .line 8
    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v9

    const/4 v7, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/tools/r8/dex/t0;-><init>(ILcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/FeatureSplit;Lcom/android/tools/r8/internal/qo0;)V

    .line 9
    iget-object v4, p2, Lcom/android/tools/r8/dex/r0;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v4, p2, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v4, p2, Lcom/android/tools/r8/dex/r0;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/internal/zK;

    move-result-object v4

    iput-object v4, p2, Lcom/android/tools/r8/dex/r0;->e:Lcom/android/tools/r8/internal/zK;

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/dex/r0;->a()V

    .line 13
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/dex/t0;->a(Lcom/android/tools/r8/graph/H2;)V

    .line 14
    sget-boolean v2, Lcom/android/tools/r8/internal/EY;->b:Z

    if-nez v2, :cond_2

    .line 15
    invoke-virtual {p1, v3}, Lcom/android/tools/r8/dex/t0;->a(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 17
    :cond_2
    :goto_1
    iget-object v2, p1, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    invoke-virtual {v2}, Lcom/android/tools/r8/dex/n0;->a()V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/ArrayList;Lcom/android/tools/r8/dex/q0;Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/dex/r0;)V
.end method
