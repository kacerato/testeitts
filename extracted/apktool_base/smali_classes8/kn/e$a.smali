.class public Lkn/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkn/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lkn/f;

.field public final b:F

.field public final synthetic c:Lkn/e;


# direct methods
.method public constructor <init>(Lkn/e;Lkn/f;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "agent",
            "dist"
        }
    .end annotation

    iput-object p1, p0, Lkn/e$a;->c:Lkn/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkn/e$a;->a:Lkn/f;

    iput p3, p0, Lkn/e$a;->b:F

    return-void
.end method
