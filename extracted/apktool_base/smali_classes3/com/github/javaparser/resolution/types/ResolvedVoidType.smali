.class public Lcom/github/javaparser/resolution/types/ResolvedVoidType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/types/ResolvedType;


# static fields
.field public static final INSTANCE:Lcom/github/javaparser/resolution/types/ResolvedType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/javaparser/resolution/types/ResolvedVoidType;

    invoke-direct {v0}, Lcom/github/javaparser/resolution/types/ResolvedVoidType;-><init>()V

    sput-object v0, Lcom/github/javaparser/resolution/types/ResolvedVoidType;->INSTANCE:Lcom/github/javaparser/resolution/types/ResolvedType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 1

    const-string v0, "void"

    return-object v0
.end method

.method public isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isVoid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "V"

    return-object v0
.end method
