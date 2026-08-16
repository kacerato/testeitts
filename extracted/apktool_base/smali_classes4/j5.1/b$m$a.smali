.class public Lj5/b$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/b$m;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj5/b$m;


# direct methods
.method public constructor <init>(Lj5/b$m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lj5/b$m$a;->a:Lj5/b$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LG4/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    iget-object p1, p0, Lj5/b$m$a;->a:Lj5/b$m;

    iget-object p1, p1, Lj5/b$m;->a:Lj5/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj5/b;->K(Lj5/b;LG4/c;)LG4/c;

    return-void
.end method

.method public b(LG4/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    return-void
.end method
