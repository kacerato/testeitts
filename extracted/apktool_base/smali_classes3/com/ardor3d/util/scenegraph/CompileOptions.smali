.class public Lcom/ardor3d/util/scenegraph/CompileOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _displayList:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDisplayList()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/util/scenegraph/CompileOptions;->_displayList:Z

    return v0
.end method

.method public setDisplayList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/util/scenegraph/CompileOptions;->_displayList:Z

    return-void
.end method
