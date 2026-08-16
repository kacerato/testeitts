.class public Lcom/github/javaparser/resolution/model/typesystem/NullType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/types/ResolvedType;


# static fields
.field public static final INSTANCE:Lcom/github/javaparser/resolution/model/typesystem/NullType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/javaparser/resolution/model/typesystem/NullType;

    invoke-direct {v0}, Lcom/github/javaparser/resolution/model/typesystem/NullType;-><init>()V

    sput-object v0, Lcom/github/javaparser/resolution/model/typesystem/NullType;->INSTANCE:Lcom/github/javaparser/resolution/model/typesystem/NullType;

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

    const-string v0, "null"

    return-object v0
.end method

.method public isArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "It does not make sense to assign a value to null, it can only be assigned"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isNull()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReferenceType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTypeVariable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
