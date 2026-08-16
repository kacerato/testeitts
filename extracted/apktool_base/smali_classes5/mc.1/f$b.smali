.class public Lmc/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK5/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmc/f;->d(Lmc/f$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmc/f$c;


# direct methods
.method public constructor <init>(Lmc/f$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lmc/f$b;->a:Lmc/f$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    return-void
.end method

.method public b(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "t"
        }
    .end annotation

    invoke-static {}, Lmc/f;->a()I

    iget-object p1, p0, Lmc/f$b;->a:Lmc/f$c;

    invoke-interface {p1}, Lmc/f$c;->b()V

    return-void
.end method

.method public finished()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lmc/f;->b(Z)Z

    return-void
.end method
