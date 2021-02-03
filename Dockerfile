FROM openpolicyagent/opa:latest

COPY policy.rego /root/policy.rego

EXPOSE 8181

CMD ["run", "--log-level=debug", "--server", "/root/policy.rego"]
