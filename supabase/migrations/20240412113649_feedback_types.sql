create type "public"."feedback_type" as enum ('positive', 'negative');

create table "public"."feedbacks" (
    "id" integer generated by default as identity not null,
    "tag" text,
    "kind" feedback_type not null
);


CREATE UNIQUE INDEX feedbacks_pkey ON public.feedbacks USING btree (id);

CREATE INDEX processed_document_chunks_embedding_idx3 ON public.processed_document_chunks USING ivfflat (embedding) WITH (lists='1');

CREATE INDEX processed_document_chunks_embedding_idx4 ON public.processed_document_chunks USING ivfflat (embedding vector_ip_ops) WITH (lists='1');

CREATE INDEX processed_document_chunks_embedding_idx5 ON public.processed_document_chunks USING ivfflat (embedding vector_cosine_ops) WITH (lists='1');

CREATE INDEX processed_document_summaries_summary_embedding_idx ON public.processed_document_summaries USING ivfflat (summary_embedding) WITH (lists='1');

CREATE INDEX processed_document_summaries_summary_embedding_idx1 ON public.processed_document_summaries USING ivfflat (summary_embedding vector_ip_ops) WITH (lists='1');

CREATE INDEX processed_document_summaries_summary_embedding_idx2 ON public.processed_document_summaries USING ivfflat (summary_embedding vector_cosine_ops) WITH (lists='1');

alter table "public"."feedbacks" add constraint "feedbacks_pkey" PRIMARY KEY using index "feedbacks_pkey";

grant delete on table "public"."feedbacks" to "anon";

grant insert on table "public"."feedbacks" to "anon";

grant references on table "public"."feedbacks" to "anon";

grant select on table "public"."feedbacks" to "anon";

grant trigger on table "public"."feedbacks" to "anon";

grant truncate on table "public"."feedbacks" to "anon";

grant update on table "public"."feedbacks" to "anon";

grant delete on table "public"."feedbacks" to "authenticated";

grant insert on table "public"."feedbacks" to "authenticated";

grant references on table "public"."feedbacks" to "authenticated";

grant select on table "public"."feedbacks" to "authenticated";

grant trigger on table "public"."feedbacks" to "authenticated";

grant truncate on table "public"."feedbacks" to "authenticated";

grant update on table "public"."feedbacks" to "authenticated";

grant delete on table "public"."feedbacks" to "service_role";

grant insert on table "public"."feedbacks" to "service_role";

grant references on table "public"."feedbacks" to "service_role";

grant select on table "public"."feedbacks" to "service_role";

grant trigger on table "public"."feedbacks" to "service_role";

grant truncate on table "public"."feedbacks" to "service_role";

grant update on table "public"."feedbacks" to "service_role";


