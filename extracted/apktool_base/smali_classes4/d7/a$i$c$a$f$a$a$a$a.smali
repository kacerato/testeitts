.class public Ld7/a$i$c$a$f$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/World/a$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld7/a$i$c$a$f$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld7/a$i$c$a$f$a$a$a;


# direct methods
.method public constructor <init>(Ld7/a$i$c$a$f$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$6"
        }
    .end annotation

    iput-object p1, p0, Ld7/a$i$c$a$f$a$a$a$a;->a:Ld7/a$i$c$a$f$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()Lcom/itsmagic/engine/Engines/Engine/World/World;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
