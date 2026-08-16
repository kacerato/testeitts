.class public LAk/B;
.super Loh/v;
.source "SourceFile"

# interfaces
.implements Loh/f;


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x4

.field public static final i:I = 0x5

.field public static final j:I = 0x6

.field public static final k:I = 0x7

.field public static final l:I = 0x8

.field public static final m:I = 0x9

.field public static final n:I = 0xa

.field public static final o:I = 0xb

.field public static final p:I = 0xc


# instance fields
.field public final b:I

.field public final c:Loh/g;


# direct methods
.method public constructor <init>(ILoh/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput p1, p0, LAk/B;->b:I

    iput-object p2, p0, LAk/B;->c:Loh/g;

    return-void
.end method

.method public constructor <init>(Loh/M;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/M;->g()I

    move-result v0

    iput v0, p0, LAk/B;->b:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "choice not implemented "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LAk/l;->v(Ljava/lang/Object;)LAk/l;

    move-result-object p1

    :goto_0
    iput-object p1, p0, LAk/B;->c:Loh/g;

    return-void

    :pswitch_2
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LAk/h;->w(Ljava/lang/Object;)LAk/h;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LAk/f;->w(Ljava/lang/Object;)LAk/f;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LAk/Y;->C(Ljava/lang/Object;)LAk/Y;

    move-result-object p1

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LAk/Z;->C(Ljava/lang/Object;)LAk/Z;

    move-result-object p1

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LAk/F;->w(Ljava/lang/Object;)LAk/F;

    move-result-object p1

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LAk/E;->y(Ljava/lang/Object;)LAk/E;

    move-result-object p1

    goto :goto_0

    :pswitch_8
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LAk/I;->w(Ljava/lang/Object;)LAk/I;

    move-result-object p1

    goto :goto_0

    :pswitch_9
    invoke-virtual {p1}, Loh/M;->O()Loh/v;

    move-result-object p1

    invoke-static {p1}, LAk/H;->A(Ljava/lang/Object;)LAk/H;

    move-result-object p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static w(Ljava/lang/Object;)LAk/B;
    .locals 2

    instance-of v0, p0, LAk/B;

    if-eqz v0, :cond_0

    check-cast p0, LAk/B;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LAk/B;

    const/16 v1, 0x80

    invoke-static {p0, v1}, Loh/M;->S(Ljava/lang/Object;I)Loh/M;

    move-result-object p0

    invoke-direct {v0, p0}, LAk/B;-><init>(Loh/M;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 3

    new-instance v0, Loh/K0;

    iget v1, p0, LAk/B;->b:I

    iget-object v2, p0, LAk/B;->c:Loh/g;

    invoke-direct {v0, v1, v2}, Loh/K0;-><init>(ILoh/g;)V

    return-object v0
.end method

.method public u()I
    .locals 1

    iget v0, p0, LAk/B;->b:I

    return v0
.end method

.method public v()Loh/g;
    .locals 1

    iget-object v0, p0, LAk/B;->c:Loh/g;

    return-object v0
.end method
