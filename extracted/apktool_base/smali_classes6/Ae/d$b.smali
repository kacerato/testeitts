.class public LAe/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAe/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LAe/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LAe/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1    # Ljava/lang/StringBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LAe/d$b;->a:I

    if-ge v0, v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget v0, p0, LAe/d$b;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LAe/d$b;->a:I

    return-void
.end method

.method public c()V
    .locals 1

    iget v0, p0, LAe/d$b;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LAe/d$b;->a:I

    return-void
.end method
