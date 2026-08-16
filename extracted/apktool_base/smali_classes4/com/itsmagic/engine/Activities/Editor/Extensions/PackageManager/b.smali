.class public final synthetic Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tonyodev/fetch2core/Func;


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;

    check-cast p1, Lcom/tonyodev/fetch2/Request;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$f;Lcom/tonyodev/fetch2/Request;)V

    return-void
.end method
