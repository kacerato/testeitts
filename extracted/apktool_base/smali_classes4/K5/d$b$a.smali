.class public LK5/d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK5/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LK5/d$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LK5/d$b;


# direct methods
.method public constructor <init>(LK5/d$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LK5/d$b$a;->a:LK5/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "copied",
            "total",
            "assetPath"
        }
    .end annotation

    new-instance p3, LK5/d$b$a$a;

    invoke-direct {p3, p0, p1, p2}, LK5/d$b$a$a;-><init>(LK5/d$b$a;II)V

    invoke-static {p3}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
