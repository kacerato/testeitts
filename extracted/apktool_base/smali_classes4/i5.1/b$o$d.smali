.class public Li5/b$o$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b$o;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li5/b$o;


# direct methods
.method public constructor <init>(Li5/b$o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Li5/b$o$d;->a:Li5/b$o;

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

    iget-object p1, p0, Li5/b$o$d;->a:Li5/b$o;

    const/4 v0, 0x0

    iput-object v0, p1, Li5/b$o;->a:LG4/c;

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
