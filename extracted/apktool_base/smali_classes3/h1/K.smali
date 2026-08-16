.class public final Lh1/K;
.super Lh1/N;
.source "SourceFile"


# instance fields
.field public final synthetic i:Lh1/F;


# direct methods
.method public constructor <init>(Lh1/L;Lh1/b;Ljava/lang/CharSequence;Lh1/F;)V
    .locals 0

    iput-object p4, p0, Lh1/K;->i:Lh1/F;

    invoke-direct {p0, p2, p3}, Lh1/N;-><init>(Lh1/b;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final c(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final d(I)I
    .locals 4

    iget-object v0, p0, Lh1/N;->d:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string v2, "index"

    invoke-static {p1, v1, v2}, Lh1/J;->b(IILjava/lang/String;)I

    :goto_0
    if-ge p1, v1, :cond_1

    iget-object v2, p0, Lh1/K;->i:Lh1/F;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lh1/F;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_1
    return p1
.end method
