.class public LAe/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAe/d;->c(LUm/v;LAe/d$c;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LAe/d$b;

.field public final synthetic b:Ljava/lang/StringBuilder;

.field public final synthetic c:LAe/d$c;


# direct methods
.method public constructor <init>(LAe/d$b;Ljava/lang/StringBuilder;LAe/d$c;)V
    .locals 0

    iput-object p1, p0, LAe/d$a;->a:LAe/d$b;

    iput-object p2, p0, LAe/d$a;->b:Ljava/lang/StringBuilder;

    iput-object p3, p0, LAe/d$a;->c:LAe/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 p2, 0x0

    aget-object p2, p3, p2

    check-cast p2, LUm/v;

    iget-object p3, p0, LAe/d$a;->a:LAe/d$b;

    iget-object v0, p0, LAe/d$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, LAe/d$b;->a(Ljava/lang/StringBuilder;)V

    iget-object p3, p0, LAe/d$a;->b:Ljava/lang/StringBuilder;

    iget-object v0, p0, LAe/d$a;->c:LAe/d$c;

    invoke-interface {v0, p2}, LAe/d$c;->a(LUm/v;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LUm/v;->e()LUm/v;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, LAe/d$a;->b:Ljava/lang/StringBuilder;

    const-string v0, " [\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, LAe/d$a;->a:LAe/d$b;

    invoke-virtual {p3}, LAe/d$b;->c()V

    check-cast p1, LUm/C;

    invoke-static {p1, p2}, LAe/d;->a(LUm/C;LUm/v;)V

    iget-object p1, p0, LAe/d$a;->a:LAe/d$b;

    invoke-virtual {p1}, LAe/d$b;->b()V

    iget-object p1, p0, LAe/d$a;->a:LAe/d$b;

    iget-object p2, p0, LAe/d$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, LAe/d$b;->a(Ljava/lang/StringBuilder;)V

    iget-object p1, p0, LAe/d$a;->b:Ljava/lang/StringBuilder;

    const-string p2, "]\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object p1, p0, LAe/d$a;->b:Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
