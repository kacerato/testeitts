.class public Lzd/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzd/d$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzd/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[I

.field public b:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lzd/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lzd/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    iget-object v0, p0, Lzd/e$b;->a:[I

    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method public final b(I)I
    .locals 2

    iget-object v0, p0, Lzd/e$b;->b:[I

    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method public varargs c([I)V
    .locals 0

    iput-object p1, p0, Lzd/e$b;->b:[I

    return-void
.end method

.method public varargs d([I)V
    .locals 0

    iput-object p1, p0, Lzd/e$b;->a:[I

    return-void
.end method
