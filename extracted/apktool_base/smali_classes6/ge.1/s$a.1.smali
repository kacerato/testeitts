.class public Lge/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhe/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lge/s;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ljava/lang/StringBuilder;

.field public final synthetic c:Lge/s;


# direct methods
.method public constructor <init>(Lge/s;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lge/s$a;->c:Lge/s;

    iput-object p2, p0, Lge/s$a;->b:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lge/s$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(DC)Z
    .locals 2

    iget-boolean v0, p0, Lge/s$a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lge/s$a;->a:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lge/s$a;->b:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v0, p0, Lge/s$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lge/s$a;->b:Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lge/s$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method
