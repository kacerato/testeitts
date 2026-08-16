.class public final synthetic LPc/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LPc/n;

.field public final synthetic c:LPc/p;

.field public final synthetic d:LPc/o;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(LPc/n;LPc/p;LPc/o;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPc/m;->b:LPc/n;

    iput-object p2, p0, LPc/m;->c:LPc/p;

    iput-object p3, p0, LPc/m;->d:LPc/o;

    iput p4, p0, LPc/m;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LPc/m;->b:LPc/n;

    iget-object v1, p0, LPc/m;->c:LPc/p;

    iget-object v2, p0, LPc/m;->d:LPc/o;

    iget v3, p0, LPc/m;->e:I

    invoke-static {v0, v1, v2, v3}, LPc/n;->i(LPc/n;LPc/p;LPc/o;I)V

    return-void
.end method
