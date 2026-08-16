.class public Lzh/a;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static final j:I = 0x5

.field public static final k:I = 0x6

.field public static final l:I = 0x7

.field public static final m:I = 0x8

.field public static final n:[Z


# instance fields
.field public b:I

.field public c:Loh/g;

.field public d:Lhi/B;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lzh/a;->n:[Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(ILoh/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, Lzh/a;->b:I

    iput-object p2, p0, Lzh/a;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Lhi/B;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lzh/a;->b:I

    iput-object p1, p0, Lzh/a;->d:Lhi/B;

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    iput v0, p0, Lzh/a;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzh/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, Lai/b;->v(Ljava/lang/Object;)Lai/b;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lzh/a;->c:Loh/g;

    goto :goto_1

    :pswitch_1
    invoke-static {p1, v1}, LVh/g;->v(Loh/M;Z)LVh/g;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v1}, LVh/b;->w(Loh/M;Z)LVh/b;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LVh/c;->u(Ljava/lang/Object;)LVh/c;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    invoke-static {p1, v1}, Lhi/r;->v(Loh/M;Z)Lhi/r;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v1}, Lth/L;->w(Loh/M;Z)Lth/L;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LDh/c;->v(Ljava/lang/Object;)LDh/c;

    move-result-object p1

    goto :goto_0

    :pswitch_8
    invoke-static {p1, v1}, Lhi/q;->w(Loh/M;Z)Lhi/q;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static u(Loh/E;)[Lzh/a;
    .locals 4

    invoke-virtual {p0}, Loh/E;->size()I

    move-result v0

    new-array v1, v0, [Lzh/a;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-virtual {p0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v3

    invoke-static {v3}, Lzh/a;->w(Ljava/lang/Object;)Lzh/a;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static w(Ljava/lang/Object;)Lzh/a;
    .locals 2

    instance-of v0, p0, Lzh/a;

    if-eqz v0, :cond_0

    check-cast p0, Lzh/a;

    return-object p0

    :cond_0
    instance-of v0, p0, Loh/M;

    if-eqz v0, :cond_1

    new-instance v0, Lzh/a;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, Lzh/a;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Lzh/a;

    invoke-static {p0}, Lhi/B;->z(Ljava/lang/Object;)Lhi/B;

    move-result-object p0

    invoke-direct {v0, p0}, Lzh/a;-><init>(Lhi/B;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public g()I
    .locals 1

    iget v0, p0, Lzh/a;->b:I

    return v0
.end method

.method public r()Loh/B;
    .locals 4

    iget-object v0, p0, Lzh/a;->d:Lhi/B;

    if-nez v0, :cond_0

    new-instance v0, Loh/K0;

    sget-object v1, Lzh/a;->n:[Z

    iget v2, p0, Lzh/a;->b:I

    aget-boolean v1, v1, v2

    iget-object v3, p0, Lzh/a;->c:Loh/g;

    invoke-direct {v0, v1, v2, v3}, Loh/K0;-><init>(ZILoh/g;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lhi/B;->r()Loh/B;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CertEtcToken {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzh/a;->c:Loh/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Lhi/B;
    .locals 1

    iget-object v0, p0, Lzh/a;->d:Lhi/B;

    return-object v0
.end method

.method public x()Loh/g;
    .locals 1

    iget-object v0, p0, Lzh/a;->c:Loh/g;

    return-object v0
.end method
