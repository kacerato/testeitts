.class public abstract Lcom/android/tools/r8/internal/Nn0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Lcom/android/tools/r8/internal/Ln0;

.field public static final c:Lcom/android/tools/r8/internal/Mn0;

.field public static final d:Lcom/android/tools/r8/internal/Fn0;

.field public static final e:Lcom/android/tools/r8/internal/Hn0;

.field public static final f:Lcom/android/tools/r8/internal/Jn0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "java.sql.Date"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/tools/r8/internal/Nn0;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Ln0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ln0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Nn0;->b:Lcom/android/tools/r8/internal/Ln0;

    new-instance v0, Lcom/android/tools/r8/internal/Mn0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Mn0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Nn0;->c:Lcom/android/tools/r8/internal/Mn0;

    sget-object v0, Lcom/android/tools/r8/internal/Gn0;->b:Lcom/android/tools/r8/internal/Fn0;

    sput-object v0, Lcom/android/tools/r8/internal/Nn0;->d:Lcom/android/tools/r8/internal/Fn0;

    sget-object v0, Lcom/android/tools/r8/internal/In0;->b:Lcom/android/tools/r8/internal/Hn0;

    sput-object v0, Lcom/android/tools/r8/internal/Nn0;->e:Lcom/android/tools/r8/internal/Hn0;

    sget-object v0, Lcom/android/tools/r8/internal/Kn0;->b:Lcom/android/tools/r8/internal/Jn0;

    sput-object v0, Lcom/android/tools/r8/internal/Nn0;->f:Lcom/android/tools/r8/internal/Jn0;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/tools/r8/internal/Nn0;->b:Lcom/android/tools/r8/internal/Ln0;

    sput-object v0, Lcom/android/tools/r8/internal/Nn0;->c:Lcom/android/tools/r8/internal/Mn0;

    sput-object v0, Lcom/android/tools/r8/internal/Nn0;->d:Lcom/android/tools/r8/internal/Fn0;

    sput-object v0, Lcom/android/tools/r8/internal/Nn0;->e:Lcom/android/tools/r8/internal/Hn0;

    sput-object v0, Lcom/android/tools/r8/internal/Nn0;->f:Lcom/android/tools/r8/internal/Jn0;

    :goto_1
    return-void
.end method
