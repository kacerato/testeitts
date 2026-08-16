.class public LHc/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LHc/c;->r(Ljava/lang/String;Ljava/io/File;LHc/c$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LHc/c$f;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:LHc/c$d;


# direct methods
.method public constructor <init>(LHc/c$f;Ljava/lang/String;LHc/c$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$cached",
            "val$logicalPath",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LHc/c$b;->b:LHc/c$f;

    iput-object p2, p0, LHc/c$b;->c:Ljava/lang/String;

    iput-object p3, p0, LHc/c$b;->d:LHc/c$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LHc/c$b;->b:LHc/c$f;

    iget-object v1, p0, LHc/c$b;->c:Ljava/lang/String;

    iget-object v2, p0, LHc/c$b;->d:LHc/c$d;

    invoke-static {v0, v1, v2}, LHc/c;->b(LHc/c$f;Ljava/lang/String;LHc/c$d;)V

    return-void
.end method
