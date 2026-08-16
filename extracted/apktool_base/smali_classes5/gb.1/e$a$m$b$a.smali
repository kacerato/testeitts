.class public Lgb/e$a$m$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgb/e$a$m$b;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lgb/e$a$m$b;


# direct methods
.method public constructor <init>(Lgb/e$a$m$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lgb/e$a$m$b$a;->a:Lgb/e$a$m$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZ6/g;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "progress",
            "area"
        }
    .end annotation

    new-instance p2, Lgb/e$a$m$b$a$a;

    invoke-direct {p2, p0, p1}, Lgb/e$a$m$b$a$a;-><init>(Lgb/e$a$m$b$a;LZ6/g;)V

    invoke-static {p2}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method
