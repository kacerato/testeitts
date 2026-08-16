.class public LW/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LW/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LW/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public c:LW/d;


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LW/c;->a:I

    iput-boolean p2, p0, LW/c;->b:Z

    return-void
.end method


# virtual methods
.method public a(LC/a;Z)LW/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/a;",
            "Z)",
            "LW/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    sget-object p2, LC/a;->MEMORY_CACHE:LC/a;

    if-ne p1, p2, :cond_0

    invoke-static {}, LW/e;->b()LW/f;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LW/c;->b()LW/f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final b()LW/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LW/f<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LW/c;->c:LW/d;

    if-nez v0, :cond_0

    new-instance v0, LW/d;

    iget v1, p0, LW/c;->a:I

    iget-boolean v2, p0, LW/c;->b:Z

    invoke-direct {v0, v1, v2}, LW/d;-><init>(IZ)V

    iput-object v0, p0, LW/c;->c:LW/d;

    :cond_0
    iget-object v0, p0, LW/c;->c:LW/d;

    return-object v0
.end method
