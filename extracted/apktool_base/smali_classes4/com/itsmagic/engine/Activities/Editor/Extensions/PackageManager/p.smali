.class public final synthetic Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/p;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/p;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;

    invoke-interface {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;->a()V

    return-void
.end method
