.class public final Lm9/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[Lm9/d;

.field public final b:[Lm9/d;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>([Lm9/d;[Lm9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dirtyChunks",
            "removedChunks"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lm9/e;->a()[Lm9/d;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lm9/e$b;->a:[Lm9/d;

    if-nez p2, :cond_1

    .line 4
    invoke-static {}, Lm9/e;->a()[Lm9/d;

    move-result-object p2

    :cond_1
    iput-object p2, p0, Lm9/e$b;->b:[Lm9/d;

    return-void
.end method

.method public synthetic constructor <init>([Lm9/d;[Lm9/d;Lm9/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lm9/e$b;-><init>([Lm9/d;[Lm9/d;)V

    return-void
.end method

.method public static synthetic a(Lm9/e$b;)I
    .locals 0

    iget p0, p0, Lm9/e$b;->d:I

    return p0
.end method

.method public static synthetic b(Lm9/e$b;)I
    .locals 2

    iget v0, p0, Lm9/e$b;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm9/e$b;->d:I

    return v0
.end method

.method public static synthetic c(Lm9/e$b;)[Lm9/d;
    .locals 0

    iget-object p0, p0, Lm9/e$b;->b:[Lm9/d;

    return-object p0
.end method

.method public static synthetic d(Lm9/e$b;)I
    .locals 0

    iget p0, p0, Lm9/e$b;->c:I

    return p0
.end method

.method public static synthetic e(Lm9/e$b;)I
    .locals 2

    iget v0, p0, Lm9/e$b;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm9/e$b;->c:I

    return v0
.end method

.method public static synthetic f(Lm9/e$b;)[Lm9/d;
    .locals 0

    iget-object p0, p0, Lm9/e$b;->a:[Lm9/d;

    return-object p0
.end method
