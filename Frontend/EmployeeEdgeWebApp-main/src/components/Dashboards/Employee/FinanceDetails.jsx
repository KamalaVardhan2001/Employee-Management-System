export default (props) => {
  const renderKeyValue = (label, value) => (
    <div className="key-value-pair">
      <div className="key">{label}</div>
      <div className="value">{value}</div>
    </div>
  );

  return (
    <div className="details-section">
      {renderKeyValue("PAN Card:", props.details.pan_card)}
      {renderKeyValue("Aadhar Card:", props.details.aadhar_card)}
      <fieldset>
        <legend>Bank Details</legend>
        {renderKeyValue("Bank Name:", props.details.bank_name)}
        {renderKeyValue("Branch:", props.details.branch_name)}
        {renderKeyValue("IFSC Code:", props.details.ifsc_code)}
      </fieldset>
      {renderKeyValue("CTC Breakup:", props.details.ctc_breakup)}
      <button
        type="button"
        onClick={() => alert("Download last 6 months payslips!")}
        className="download-payslips"
      >
        Download Payslips
      </button>
    </div>
  );
};
