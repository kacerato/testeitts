.class public LZ5/f$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ5/f$d;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LZ5/f$d;


# direct methods
.method public constructor <init>(LZ5/f$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LZ5/f$d$a;->b:LZ5/f$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LZ5/f$d$a;->b:LZ5/f$d;

    iget-object v0, v0, LZ5/f$d;->b:LZ5/f;

    invoke-static {v0}, LZ5/f;->x1(LZ5/f;)V

    return-void
.end method
