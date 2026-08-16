.class public Lcom/android/tools/r8/internal/Ba;
.super Lcom/android/tools/r8/internal/W9;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/internal/T10;

.field public final d:Lcom/android/tools/r8/internal/T10;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W9;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/Ba;->e:Z

    if-nez v0, :cond_1

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    sget-object v1, Lcom/android/tools/r8/internal/T10;->b:Lcom/android/tools/r8/internal/T10;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/android/tools/r8/internal/T10;->d:Lcom/android/tools/r8/internal/T10;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/android/tools/r8/internal/T10;->c:Lcom/android/tools/r8/internal/T10;

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    if-nez v0, :cond_6

    sget-object v0, Lcom/android/tools/r8/internal/T10;->b:Lcom/android/tools/r8/internal/T10;

    if-eq p2, v0, :cond_4

    sget-object v0, Lcom/android/tools/r8/internal/T10;->d:Lcom/android/tools/r8/internal/T10;

    if-eq p2, v0, :cond_4

    sget-object v0, Lcom/android/tools/r8/internal/T10;->c:Lcom/android/tools/r8/internal/T10;

    if-ne p2, v0, :cond_6

    :cond_4
    sget-object v0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    iput-object p1, p0, Lcom/android/tools/r8/internal/Ba;->c:Lcom/android/tools/r8/internal/T10;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ba;->d:Lcom/android/tools/r8/internal/T10;

    return-void
.end method

.method public static a(I)Lcom/android/tools/r8/internal/Ba;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected CfNumberConversion opcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :pswitch_0
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->d:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 7
    :pswitch_1
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->c:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 8
    :pswitch_2
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->b:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 9
    :pswitch_3
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 10
    :pswitch_4
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 11
    :pswitch_5
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 12
    :pswitch_6
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 13
    :pswitch_7
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 14
    :pswitch_8
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 15
    :pswitch_9
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 16
    :pswitch_a
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 17
    :pswitch_b
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 18
    :pswitch_c
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->h:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 19
    :pswitch_d
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->g:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    .line 20
    :pswitch_e
    new-instance p0, Lcom/android/tools/r8/internal/Ba;

    sget-object v0, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    sget-object v1, Lcom/android/tools/r8/internal/T10;->f:Lcom/android/tools/r8/internal/T10;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/internal/Ba;-><init>(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x85
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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


# virtual methods
.method public final B()I
    .locals 8

    sget-object v0, Lcom/android/tools/r8/internal/Aa;->a:[I

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ba;->c:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x7

    const-string v6, " to "

    const-string v7, "Invalid CfNumberConversion from "

    if-eq v1, v4, :cond_9

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_1

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ba;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ba;->c:Lcom/android/tools/r8/internal/T10;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ba;->d:Lcom/android/tools/r8/internal/T10;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x87

    return v0

    :pswitch_1
    const/16 v0, 0x86

    return v0

    :pswitch_2
    const/16 v0, 0x85

    return v0

    :pswitch_3
    const/16 v0, 0x93

    return v0

    :pswitch_4
    const/16 v0, 0x92

    return v0

    :pswitch_5
    const/16 v0, 0x91

    return v0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ba;->c:Lcom/android/tools/r8/internal/T10;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ba;->d:Lcom/android/tools/r8/internal/T10;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ba;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-ne v0, v5, :cond_2

    const/16 v0, 0x8e

    return v0

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ba;->c:Lcom/android/tools/r8/internal/T10;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ba;->d:Lcom/android/tools/r8/internal/T10;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v0, 0x90

    return v0

    :cond_4
    const/16 v0, 0x8f

    return v0

    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ba;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v4, :cond_8

    if-eq v0, v2, :cond_7

    if-ne v0, v5, :cond_6

    const/16 v0, 0x8b

    return v0

    :cond_6
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ba;->c:Lcom/android/tools/r8/internal/T10;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ba;->d:Lcom/android/tools/r8/internal/T10;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v0, 0x8d

    return v0

    :cond_8
    const/16 v0, 0x8c

    return v0

    :cond_9
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ba;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_c

    if-eq v0, v2, :cond_b

    if-ne v0, v5, :cond_a

    const/16 v0, 0x88

    return v0

    :cond_a
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ba;->c:Lcom/android/tools/r8/internal/T10;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ba;->d:Lcom/android/tools/r8/internal/T10;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const/16 v0, 0x8a

    return v0

    :cond_c
    const/16 v0, 0x89

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/pf;Lcom/android/tools/r8/graph/O;)I
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/android/tools/r8/graph/O;->a(Lcom/android/tools/r8/internal/W9;Lcom/android/tools/r8/internal/W9;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;)Lcom/android/tools/r8/internal/H9;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ba;->c:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ba;->d:Lcom/android/tools/r8/internal/T10;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/T10;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/android/tools/r8/internal/H9;->a(Lcom/android/tools/r8/internal/O8;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/uD;Lcom/android/tools/r8/naming/r0;Lcom/android/tools/r8/internal/RR;Lcom/android/tools/r8/internal/EX;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ba;->B()I

    move-result p1

    invoke-virtual {p9, p1}, Lcom/android/tools/r8/internal/EX;->a(I)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Va;)V
    .locals 0

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Va;->a(Lcom/android/tools/r8/internal/Ba;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/internal/ub;Lcom/android/tools/r8/internal/hb;)V
    .locals 4

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ub;->a()Lcom/android/tools/r8/internal/ob;

    move-result-object p3

    iget p3, p3, Lcom/android/tools/r8/internal/ob;->a:I

    .line 22
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ba;->d:Lcom/android/tools/r8/internal/T10;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ba;->c:Lcom/android/tools/r8/internal/T10;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Kw0;->a(Lcom/android/tools/r8/internal/T10;)Lcom/android/tools/r8/internal/Kw0;

    move-result-object v2

    .line 23
    new-instance v3, Lcom/android/tools/r8/internal/pb;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/pb;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    invoke-virtual {p2, v3}, Lcom/android/tools/r8/internal/ub;->a(Lcom/android/tools/r8/internal/rb;)Lcom/android/tools/r8/internal/ob;

    move-result-object p2

    .line 24
    iget p2, p2, Lcom/android/tools/r8/internal/ob;->a:I

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/android/tools/r8/internal/aB;->a(Lcom/android/tools/r8/internal/T10;Lcom/android/tools/r8/internal/T10;II)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final y()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
