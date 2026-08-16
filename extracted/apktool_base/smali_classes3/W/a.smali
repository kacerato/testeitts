.class public abstract LW/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LW/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LW/g<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:LW/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LW/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LW/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LW/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW/a;->a:LW/g;

    return-void
.end method


# virtual methods
.method public a(LC/a;Z)LW/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LC/a;",
            "Z)",
            "LW/f<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, LW/a;->a:LW/g;

    invoke-interface {v0, p1, p2}, LW/g;->a(LC/a;Z)LW/f;

    move-result-object p1

    new-instance p2, LW/a$a;

    invoke-direct {p2, p0, p1}, LW/a$a;-><init>(LW/a;LW/f;)V

    return-object p2
.end method

.method public abstract b(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method
