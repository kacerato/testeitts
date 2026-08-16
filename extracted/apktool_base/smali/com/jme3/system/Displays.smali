.class public Lcom/jme3/system/Displays;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private displays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/system/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/system/Displays;->displays:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addNewMonitor(J)I
    .locals 1

    new-instance v0, Lcom/jme3/system/DisplayInfo;

    invoke-direct {v0}, Lcom/jme3/system/DisplayInfo;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/jme3/system/DisplayInfo;->setDisplay(J)V

    iget-object p1, p0, Lcom/jme3/system/Displays;->displays:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/jme3/system/Displays;->displays:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public get(I)Lcom/jme3/system/DisplayInfo;
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/Displays;->displays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/jme3/system/Displays;->displays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/system/DisplayInfo;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setInfo(ILjava/lang/String;III)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/Displays;->displays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/jme3/system/Displays;->displays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/system/DisplayInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Lcom/jme3/system/DisplayInfo;->setWidth(I)V

    invoke-virtual {p1, p4}, Lcom/jme3/system/DisplayInfo;->setHeight(I)V

    invoke-virtual {p1, p5}, Lcom/jme3/system/DisplayInfo;->setRate(I)V

    invoke-virtual {p1, p2}, Lcom/jme3/system/DisplayInfo;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPrimaryDisplay(I)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/Displays;->displays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/jme3/system/Displays;->displays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/system/DisplayInfo;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/jme3/system/DisplayInfo;->setPrimary(Z)V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/system/Displays;->displays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
