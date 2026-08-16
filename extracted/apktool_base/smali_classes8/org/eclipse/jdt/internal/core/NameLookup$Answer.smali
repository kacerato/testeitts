.class public Lorg/eclipse/jdt/internal/core/NameLookup$Answer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/core/NameLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Answer"
.end annotation


# instance fields
.field entry:Lorg/eclipse/jdt/core/IClasspathEntry;

.field public module:Lorg/eclipse/jdt/core/IModuleDescription;

.field restriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

.field public type:Lorg/eclipse/jdt/core/IType;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/IModuleDescription;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->module:Lorg/eclipse/jdt/core/IModuleDescription;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->restriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;Lorg/eclipse/jdt/core/IClasspathEntry;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;-><init>(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IModuleDescription;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/core/IType;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;Lorg/eclipse/jdt/core/IClasspathEntry;Lorg/eclipse/jdt/core/IModuleDescription;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->type:Lorg/eclipse/jdt/core/IType;

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->restriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    .line 5
    iput-object p3, p0, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->entry:Lorg/eclipse/jdt/core/IClasspathEntry;

    .line 6
    iput-object p4, p0, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->module:Lorg/eclipse/jdt/core/IModuleDescription;

    return-void
.end method


# virtual methods
.method public ignoreIfBetter()Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->restriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;->ignoreIfBetter()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBetter(Lorg/eclipse/jdt/internal/core/NameLookup$Answer;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->restriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v2, p1, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->restriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;->getProblemId()I

    move-result v1

    iget-object p1, p1, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->restriction:Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;->getProblemId()I

    move-result p1

    if-ge v1, p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->type:Lorg/eclipse/jdt/core/IType;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/core/NameLookup$Answer;->module:Lorg/eclipse/jdt/core/IModuleDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
