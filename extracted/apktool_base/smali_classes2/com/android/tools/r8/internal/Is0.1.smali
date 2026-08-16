.class public final Lcom/android/tools/r8/internal/Is0;
.super Lcom/android/tools/r8/internal/Vl0;
.source "SourceFile"


# static fields
.field public static final l:Ljava/util/Map;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/StringBuilder;

.field public c:Ljava/lang/StringBuilder;

.field public d:Ljava/lang/StringBuilder;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "boolean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "byte"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "char"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "short"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "int"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "long"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "float"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "double"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v2, "void"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/internal/Is0;->l:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Vl0;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/Is0;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Is0;->a:Z

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Vl0;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/android/tools/r8/internal/Is0;->k:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Is0;->a:Z

    .line 8
    iput-object p1, p0, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final a(C)Lcom/android/tools/r8/internal/Is0;
    .locals 2

    .line 7
    iget v0, p0, Lcom/android/tools/r8/internal/Is0;->i:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lcom/android/tools/r8/internal/Is0;->i:I

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_1

    .line 11
    iget-object p1, p0, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    const-string v0, "? extends "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_2

    .line 12
    iget-object p1, p0, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    const-string v0, "? super "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_2
    :goto_1
    iget p1, p0, Lcom/android/tools/r8/internal/Is0;->j:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/tools/r8/internal/Is0;->j:I

    return-object p0
.end method

.method public final a()V
    .locals 2

    .line 14
    iget v0, p0, Lcom/android/tools/r8/internal/Is0;->j:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 15
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/Is0;->j:I

    return-void

    .line 16
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/tools/r8/internal/Is0;->j:I

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 17
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/Is0;->j:I

    .line 18
    iget-object v0, p0, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "java/lang/Object"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/Is0;->i:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Is0;->g:Z

    if-eqz v0, :cond_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Is0;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/tools/r8/internal/Is0;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_2
    :goto_0
    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/Is0;->k:Ljava/lang/String;

    .line 6
    iget p1, p0, Lcom/android/tools/r8/internal/Is0;->i:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/tools/r8/internal/Is0;->i:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/Is0;->i:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Is0;->i:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/tools/r8/internal/Is0;->i:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Is0;->b:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Is0;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/tools/r8/internal/Is0;->k:Ljava/lang/String;

    iget p1, p0, Lcom/android/tools/r8/internal/Is0;->i:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/tools/r8/internal/Is0;->i:I

    return-void
.end method
