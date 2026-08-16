.class public final synthetic Lcom/itsmagic/engine/Engines/Engine/Settings/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/b;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/b;->c:I

    iput-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/b;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/b;->b:Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/b;->c:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/b;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/b;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;->a(Lcom/itsmagic/engine/Engines/Engine/Settings/DecalSettings$c$a$a;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
