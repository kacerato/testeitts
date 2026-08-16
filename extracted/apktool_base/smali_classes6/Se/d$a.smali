.class public final LSe/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSe/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:LSe/d$b;

.field public final synthetic c:LSe/d;


# direct methods
.method public constructor <init>(LSe/d;LSe/d$b;)V
    .locals 0

    iput-object p1, p0, LSe/d$a;->c:LSe/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LSe/d$a;->b:LSe/d$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LSe/d$a;->b:LSe/d$b;

    iget-object v1, v0, LSe/d$b;->c:LGe/h;

    iget-object v2, p0, LSe/d$a;->c:LSe/d;

    invoke-virtual {v2, v0}, LSe/d;->f(Ljava/lang/Runnable;)LDe/c;

    move-result-object v0

    invoke-virtual {v1, v0}, LGe/h;->a(LDe/c;)Z

    return-void
.end method
