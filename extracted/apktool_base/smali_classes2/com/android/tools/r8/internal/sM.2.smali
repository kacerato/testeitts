.class public final Lcom/android/tools/r8/internal/sM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/AQ;


# static fields
.field public static final c:Lcom/android/tools/r8/internal/nQ;


# instance fields
.field public a:Z

.field public final b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/nQ;

    const-class v1, Lcom/android/tools/r8/internal/sM;

    invoke-static {v1}, Lcom/android/tools/r8/internal/te0;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/Wd;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/nQ;-><init>(Lcom/android/tools/r8/internal/Wd;)V

    sput-object v0, Lcom/android/tools/r8/internal/sM;->c:Lcom/android/tools/r8/internal/nQ;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/sM;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/android/tools/r8/internal/sM;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type kotlin.metadata.jvm.internal.JvmTypeExtension"

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/tools/r8/internal/sM;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/sM;->a:Z

    iget-boolean v3, p1, Lcom/android/tools/r8/internal/sM;->a:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/sM;->b:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/tools/r8/internal/sM;->b:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getType()Lcom/android/tools/r8/internal/nQ;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/sM;->c:Lcom/android/tools/r8/internal/nQ;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/sM;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/internal/sM;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
